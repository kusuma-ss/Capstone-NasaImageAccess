
# Cloud DevOps capstone project "Operationalizing an containerized application"

## Pipeline Status

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/kusuma-ss/NASAImageAccess/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/kusuma-ss/NASAImageAccess/tree/master)

## Web application displaying NASA's Astronomy Picture of the Day

Web application using Fetch API written in JavaScript, HTML and CSS. It uses [NASA APOD API](https://api.nasa.gov/) service, to receive response objects containing information about the Anstronomical Picture for the Day, description of the image and meta data. It allows users to develope wonderful/scientific/cretive applications which make use of NASA imagery and Data. Therefore, with the help of the API a simple application that displays Astronomical Picture of the Day is developed. The application was developed by referring the following [blog](https://sophiali.dev/javascript-fetch-api-with-nasa-api).

The application is serviced by [Nginx](https://www.nginx.com/) server listening on port 80. The application is containrized using suitable nginx image, and opertaionalized for service using AWS EKS, Dockers and CircelCI.  

One could configure his/her own "DEMO_KEY" by registering on [NASA API](https://api.nasa.gov/) and replacing the variable in config_IN.js and renaming the file to config.js. For demo purposes, the "DEMO_KEY" variable is directly substituted from CircleCI environment variable.  

Below is the directory structure of the application:\
📦app\
 ┣ 📜app.js (JavaScript that sends get request to NASA service and processes response object for html)\
 ┣ 📜config.js (Stores API key)\
 ┣ 📜config_IN.js (Stores API key)\
 ┣ 📜index.html (HTML file to display response received from NASA service)\
 ┗ 📜style.css (HTML style template)

## Continuous Integration and Continuous Deployment

 In this project I applied the skills and knowledge which were thought in the Udacity Cloud DevOps Nanodegree program to demonstrate my understanding of Cloud DevOps principles. These include some of the following:

* Working in AWS
* Using Circle CI to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Working with CloudFormation to create and provision infrastructure (AWS) 
* Building Kubernetes clusters (Working with AWS EKS)
* Building Docker containers in pipelines
* Pushing Docker Image into Private repository
* Demonstration Rolling update deployment
* Performing smoke testing, linting ..etc.

## Project directory tree

📦\
 ┣ 📂.circleci (Contains CircleCi Configuration file for CI/CD)\
 ┃ ┣ 📜config.yml\
 ┣ 📂app (Contains web application)\
 ┃ ┣ 📜app.js\
 ┃ ┣ 📜config.js\
 ┃ ┣ 📜config_IN.js\
 ┃ ┣ 📜index.html\
 ┃ ┗ 📜style.css\
 ┣ 📂cloudformation (IaaS)\
 ┃ ┣ 📜clusterParameter.json\
 ┃ ┣ 📜clusters.yml\
 ┃ ┣ 📜network.yml\
 ┃ ┣ 📜networkparameter.json\
 ┃ ┣ 📜node.yml\
 ┃ ┗ 📜nodeparameter.json\
 ┣ 📂eks (Deployment and Service manifest)\
 ┃ ┣ 📜deployment.yaml\
 ┃ ┗ 📜service.yml\
 ┣ 📜.gitignore\
 ┣ 📜Dockerfile\
 ┣ 📜Makefile\
 ┣ 📜README.md\
 ┗ 📜requirements.txt\
