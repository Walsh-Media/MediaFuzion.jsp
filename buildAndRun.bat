@echo off
call mvn clean package
call docker build -t ie.walsh-media/MediaFuzion.jsp .
call docker rm -f MediaFuzion.jsp
call docker run -d -p 9080:9080 -p 9443:9443 --name MediaFuzion.jsp ie.walsh-media/MediaFuzion.jsp