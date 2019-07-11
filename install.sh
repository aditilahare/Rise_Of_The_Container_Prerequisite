#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

export HOMEBREW_NO_AUTO_UPDATE=1

# Install Virtual Box :-
brew cask install virtualbox

# Install K8's Cli :-
brew install kubernetes-cli

# Install Minikube :-
brew cask install minikube

# See minikube instance running :-
minikube start --memory 6000 --cpus=4

# See everything is running :-
kubectl get pods --all-namespaces=true

# Verify minikube and kubectl working fine using the following command :-
kubectl run -i --tty busybox --image=busybox -- sh

# Stop Minikube :-
minikube stop

# Create an account on Docker Store here:
    # https://store.docker.com/signup (You will need this for pushing images to docker hub registry)

# Install docker :-
brew cask install docker

# Check for the empty docker image list :-
docker images

# Pull java's latest image from Docker hub :-
docker pull openjdk

# Pull another java image :-
docker pull openjdk:slim

# Pull another java image :-
docker pull openjdk:alpine

# Pull another mongodb image :-
docker pull mongo

# See the all above four images in list :-
docker images

# Tag Mongo Image :-
docker tag mongo <your_dockerhub_username>/mongo:1.0

# Login to your docker hub account :-
docker login --username=<your_dockerhub_username>

# Push Mongo Image under your docker hub repository :-
docker push <your_dockerhub_username>/mongo:1.0

# Clone the directory :-
git clone https://github.com/boot-services/metadata-service.git

# Switched to cloned directory :-
cd metadata-service

# Install java8 and maven :-
brew cask install java8
brew install maven

# Run test :-
mvn clean test

# Starting application locally :-
mvn spring-boot:run

# Checking if all is running fine :-
curl http://localhost:8080/actuator/info

# Should give this response :-
# {"app":{"name":"Metadata Service","description":"Metadata service also known as config service. It hold the metadata/config required across different services.","version":"1.0.0"}}

# Note:

# After running the given command if any of the statuses appear to as an error then

# Uninstall the current minikube using brew cask uninstall minikube
# Install minikube version 0.34.0 using command
# curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.34.0/minikube-darwin-amd64
#  && chmod +x minikube
#  && sudo cp minikube /usr/local/bin/
#  && rm minikube

