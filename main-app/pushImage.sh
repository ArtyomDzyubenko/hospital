#!/bin/bash

imageTag=$1

if [ -z $imageTag ]
  then
    echo imageTag not provided, 'latest' will be used
    imageTag=latest
fi

repoName=314738859521.dkr.ecr.us-east-2.amazonaws.com/main-app
imageName=$repoName:$imageTag

echo [main-app STARTING] pushing $imageName...
echo [main-app] pushing docker image...

docker push $imageName

echo [main-app FINISHED] docker image has been pushed...
