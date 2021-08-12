@echo off

set imageTag=%1

if [%imageTag%]==[] (
    echo imageTag not provided, 'latest' will be used
    set imageTag=latest
)

call main-app/pushImage.bat %imageTag%