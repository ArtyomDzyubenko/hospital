#!/bin/bash

imageTag=$1

if [ -z "$imageTag" ]
  then
    echo imageTag not provided, 'latest' will be used
    imageTag=latest
fi

repoName=314738859521.dkr.ecr.us-east-2.amazonaws.com/main-app
imageName=$repoName:$imageTag

echo [main-app STARTING] building $imageName...
echo [main-app] creating jar...

(exec "${BASH_SOURCE%/*}/../gradlew" bootJar --no-daemon)

echo [main-app] creating docker image...

docker build -t $imageName "${BASH_SOURCE%/*}"

echo [main-app FINISHED] docker image has been built...
