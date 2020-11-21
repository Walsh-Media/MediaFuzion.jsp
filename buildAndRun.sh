#!/bin/sh
mvn clean package && docker build -t ie.walsh-media/MediaFuzion.jsp .
docker rm -f MediaFuzion.jsp || true && docker run -d -p 9080:9080 -p 9443:9443 --name MediaFuzion.jsp ie.walsh-media/MediaFuzion.jsp