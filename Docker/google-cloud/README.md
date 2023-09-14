## PUSH TO CLOUD REGISTRY
docker build -t gcr.io/mbandiawan-dev-environment/demo-image:v1 .

docker build -t gcr.io/mbandiawan-dev-environment/demo-image:v2 .

docker build -t gcr.io/mbandiawan-dev-environment/demo-image:v3 .


## Login to Cloud Registry through Cloud SDK
- Link: https://cloud.google.com/container-registry/docs/advanced-authentication#gcloud-helper

gcloud auth login

gcloud auth configure-docker

## Push to Container Registry
docker push gcr.io/mbandiawan-dev-environment/demo-image:v1


## PUSH TO ARTIFACT REGISTRY
### Step 1: Create Artifact Registry Repository on GCP

### Step 2: Authenticate Docker to Artifact Registry
gcloud auth configure-docker us-central1-docker.pkg.dev

### Step 3: Build Docker Image Using Bellow Syntax
docker build -t us-central1-docker.pkg.dev/mbandiawan-dev-environment/demo-repo/demo-image:v1 .

### Step 4: Push Image to Artifact Registry
docker push us-central1-docker.pkg.dev/mbandiawan-dev-environment/demo-repo/demo-image:v1