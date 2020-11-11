# MedCom FHIR starter project


* Clone this project
* Step into the cloned folder
* Run the following: `docker run -p 80:8080 -v $(pwd)/configs:/configs -e "--spring.config.location=file:///configs/medcom-core-v0.9.yaml" hapiproject/hapi:latest`

