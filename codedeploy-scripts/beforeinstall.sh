#!/bin/bash

#-->DESPLIEGUE
# Hacer ejecutable gradlew
chmod +x /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/gradlew

cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/

# Compilar la aplicación Java
# bash gradlew war
./gradlew build
./gradlew war
