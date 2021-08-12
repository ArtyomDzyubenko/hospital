#!/bin/bash

imageTag=%1

if [-z $imageTag]
  then
    echo imageTag not provided, 'latest' will be used
    imageTag=latest
fi

(exec main-app/buildImage.sh $imageTag)
