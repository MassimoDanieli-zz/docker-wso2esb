docker-wso2esb
===================

Docker image to install and run WSO2 Enterprise Service Bus . It uses the [dockerfile/java](https://index.docker.io/u/dockerfile/java/) as its base image.


The dockerfile will:

* Use `wget` to pull the ESB 5.0.0 ZIP from WS02 web site into the container `/opt` folder.
* Install `zip`.
* Unzip the ESB 5.0.0 ZIP.
* Remove the ESB 5.0.0 ZIP.
* Expose the container port `9443`.
* Set the ESB  `wso2server.sh` start-up script as the container start-up command.

### Usage
* To pull: `docker pull massimodanieli/wso2esb`
* To build: `docker build --rm -t your_image_name github.com/massimodanieli/docker-wso2esb`
* To run: `docker run --rm --name your_container_name -p 9443:9443 your_image_name`
* To access ESB web admin console, navigate to `https://localhost:9443`

