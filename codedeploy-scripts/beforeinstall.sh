#-->DESPLIEGUE

# Hacer ejecutable gradlew
chmod +x /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/gradlew

cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/

# Compilar la aplicación Java
bash gradlew war

# Añadir salida que devuelve la ruta a la aplicación instalada
echo "La aplicación Java ha sido instalada en: /opt/tomcat/webapps/AplicacionTomcat"
