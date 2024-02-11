#-->DESPLIEGUE

# Hacer ejecutable gradlew
chmod +x /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/gradlew

cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/

# Compilar la aplicación Java
bash gradlew war

# Mover el archivo WAR resultante a la carpeta de aplicaciones de Tomcat
# mv build/libs/holamundo-0.0.1-SNAPSHOT-plain.war /opt/tomcat/webapps/AplicacionTomcat.war

# mv AplicacionTomcat/build/libs/holamundo-0.0.1-SNAPSHOT.war /opt/tomcat/webapps/AplicacionTomcat.war

mv /opt/tomcat/webapps/holamundo-0.0.1-SNAPSHOT.war /opt/tomcat/webapps/AplicacionTomcat.war


# Crear directorio para desplegar la aplicación (opcional)
#mkdir /opt/tomcat/webapps/AplicacionTomcat
#unzip /opt/tomcat/webapps/AplicacionTomcat.war -d /opt/tomcat/webapps/AplicacionTomcat
# Volvemos a iniciar Tomcat
#systemctl start tomcat
# Añadir salida que devuelve la ruta a la aplicación instalada
echo "La aplicación Java ha sido instalada en: /opt/tomcat/webapps/AplicacionTomcat"
