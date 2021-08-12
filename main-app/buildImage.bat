@echo off

set imageTag=%1

if [%imageTag%]==[] (
    echo imageTag not provided, 'latest' will be used
    set imageTag=latest
)

set repoName=314738859521.dkr.ecr.us-east-2.amazonaws.com/main-app
set imageName=%repoName%:%imageTag%

echo [main-app STARTING] building %imageName%...
echo [main-app] creating jar...

call gradlew.bat bootJar --no-daemon

echo [main-app] creating docker image...

docker build -t %imageName% .

echo [main-app FINISHED] docker image has been built...
