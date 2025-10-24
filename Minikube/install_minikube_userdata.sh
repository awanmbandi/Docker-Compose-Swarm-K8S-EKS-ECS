#!/bin/bash
set -e  # Exit on any error

echo "=== Starting Minikube installation on Ubuntu 24.04 ==="

# 1. Update system
echo "Step 1: Updating system..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl wget apt-transport-https ca-certificates gnupg lsb-release

# 2. Install Docker (official method for Ubuntu 24.04)
echo "Step 2: Installing Docker..."
sudo apt remove -y docker docker-engine docker.io containerd runc 2>/dev/null || true

# Add Docker's official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add user to docker group
sudo usermod -aG docker $USER

# Apply group without logout
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R 2>/dev/null || true
sudo chmod g+rwx "$HOME/.docker" -R 2>/dev/null || true

echo "Docker installed successfully"

# 3. Install kubectl
echo "Step 3: Installing kubectl..."
KUBECTL_VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt)
curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl.sha256"

# Verify checksum
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl kubectl.sha256

echo "kubectl installed: $(kubectl version --client --short 2>/dev/null || kubectl version --client)"

# 4. Install Minikube
echo "Step 4: Installing Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

echo "Minikube installed: $(minikube version --short)"

# 5. Configure Docker for current session
echo "Step 5: Configuring Docker permissions..."
newgrp docker <<EONG
# Start Minikube
echo "Step 6: Starting Minikube cluster..."
minikube start --driver=docker --cpus=2 --memory=3800mb

# Verify
echo "Step 7: Verifying installation..."
minikube status
kubectl get nodes
kubectl cluster-info

echo ""
echo "=== ✅ Installation Complete! ==="
echo ""
echo "Cluster is running. Test with:"
echo "  kubectl get nodes"
echo "  kubectl get pods -A"
echo ""
echo "⚠️  IMPORTANT: Run this command to apply docker group in your current shell:"
echo "  newgrp docker"
echo ""
EONG

