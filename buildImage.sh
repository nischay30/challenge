export PROJECT_ID=project3-153912
## Run the code quality
npm run lint .

## Build the docker image
docker build -t gcr.io/$PROJECT_ID/api-image:1.0 -f Dockerfile .

## Push the Image
docker push gcr.io/$PROJECT_ID/api-image:1.0

## Deploy the service
kubectl create  deployment api --image=gcr.io/$PROJECT_ID/api-image:1.0

## Expose the Service
kubectl expose deployment api --type=LoadBalancer --name=api --port 3000
