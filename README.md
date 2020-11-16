# MedCom FHIR starter project


* Clone this project
* Step into the cloned folder
* Run the following: `docker run -p 80:8080 -v $(pwd)/configs:/configs -e "--spring.config.location=file:///configs/medcom-core-v0.9.yaml" hapiproject/hapi:latest`
* Done!




# Modifying the templates using an exploded version of the HAPI FHIR starter project

1) Get your hands on a compiled war file of the HAPI FHIR starter project - eg. clone it from https://github.com/hapifhir/hapi-fhir-jpaserver-starter and run ```mvn clean package```. This will leave you with a folder called target. In that folder there's a file called ROOT.war
2) Unzip the ROOT.war to a directory called ROOT
3) Clone THIS project and step into its directory
4) Copy the ROOT folder from step 2) into this directory
5) Build the docker image with the Dockerfile called DockerfileExploded (eg. ```docker build -f DockerfileExploded . -t medcom ```).
6) Start the docker container by eg: ```docker run -p 80:8080 -v $(pwd)/configs:/configs -e "--spring.config.location=file:///configs/medcom-core-v0.9.yaml" medcom```
7) Enjoy!