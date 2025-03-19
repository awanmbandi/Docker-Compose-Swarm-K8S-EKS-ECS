Minikube Cluster Setup on Linux
================
1) Environment:
	Ubuntu 22.04 or 20.04
	t2.medium
2) SSH into the Minikube-Server
3) Elevate your privelege
	# sudo su
4) Update the system
	# apt-get update
5) install docker
	# apt -y install docker.io
6) Download & Install Kubectl
   https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
	# curl -LO https://dl.k8s.io/release/v1.27.3/bin/linux/amd64/kubectl
	# sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
   Check the version
	# kubectl version
7) Install Minikube
   https://minikube.sigs.k8s.io/docs/start/
   OS: Linux, Architecture: x86-64, Release type: Beta, Installer type: Binary download
	# r=https://api.github.com/repos/kubernetes/minikube/releases
	# curl -LO $(curl -s $r | grep -o 'http.*download/v.*beta.*/minikube-linux-amd64' | head -n1)
	# sudo install minikube-linux-amd64 /usr/local/bin/minikube
8) Some Kubernetes versions requires "conntrack" to be installed in root's path
	# apt install conntrack
9) Since we are running minikube within a VM, we need to use  --driver=none
   https://minikube.sigs.k8s.io/doc/reference/drivers/none/
	# minikube start --vm-driver=none
*** Master and worker node components are installed on a single node. this useful for learning, developement and testing purposes.
*** It should not be use in Production environmet
# minikube status
# kubectl version
# kubectl get nodes