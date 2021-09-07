#!/bin/sh
mvn clean package && docker build -t com.mycompany/UMB-MAVEN .
docker rm -f UMB-MAVEN || true && docker run -d -p 9080:9080 -p 9443:9443 --name UMB-MAVEN com.mycompany/UMB-MAVEN