[![Annant05](https://circleci.com/gh/Annant05/udacity-kube-microservices.svg?style=svg)](https://app.circleci.com/pipelines/gh/Annant05/udacity-kube-microservices)

## Operationalize a Machine Learning Microservice API

An end to end project that uses Docker and Kubernetes to deploy a simple Machine Learning API.
 
 - Kubernetes
 - Docker
 - Makefile
 - CircleCI
 - Hadolint
 - Dockerfile


### Project Tasks

The goal of this project is to operationalize a working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project you will:

* Test the project code using linting - Hadolint
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make predictions using a running flask API
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


## To Setup the Environment

* Clone this repo 
  ```sh 
  git clone https://github.com/Annant05/udacity-kube-microservices.git
  ```
* Activate a virtual environment 
  ```sh 
  make setup
  ```
* Installing dependencies via project Makefile
  ```sh 
  make install
  ```

* Lint Project files with make lint
  ```sh 
  make lint
  ```

It is also important to install the following libraries separately
* Docker - to Containerize your application
* Hadolint - to Lint the Dockerfile
* Kubernetes (Minikube) - 


## Running Bash Files
1. ./run_docker.sh - `build` the dockerimage using `Dockerfile` and `run`.

2. ./make_prediction.sh - check if the container is working as expected and running on `port 8000`.

3. ./upload_docker.sh - uploads the docker image created in `step 1` to `DockerHub`. Make sure you login to docker in CLI before running the script. 

4. ./run_kubernetes.sh - creates a `kubectl deployment` in kubernetes and then exposes the `application` to outside using `kubectl port-forward`

5. Execute the script in `step 2` to check if the kubernetes deployment is correctly working and exposed on port 8000.
