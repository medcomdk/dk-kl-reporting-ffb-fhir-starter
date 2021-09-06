# kl.reporting.ffb FHIR starter project


* Clone this project
* Step into the cloned folder
* Run the following: `docker run -p 8081:8080 --add-host fhir.medcom.dk:172.20.0.11 -v $(pwd)/configs:/configs -e "--spring.config.location=file:///configs/medcom-core-v0.9.yaml" hapiproject/hapi:latest`
* Done!




# Modifying the templates using an exploded version of the HAPI FHIR starter project

1) Build the docker image with the provided Dockerfile (eg. ```docker build . --no-cache -t kl ```).
2) Start the docker container by eg: ```docker run -p 8081:8080 --add-host fhir.medcom.dk:172.20.0.11 -v $(pwd)/configs:/configs -e "--spring.config.location=file:///configs/release0.1.0release0.1.0.yaml" kl```
3) Enjoy!
