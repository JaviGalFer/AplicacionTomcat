#-->DESPLIEGUE
# Clonar el repositorio de GitHub
cd /tmp
git clone https://github.com/JaviGalFer/AplicacionTomcat
cd AplicacionTomcat
# Apagamos Tomcat
systemctl stop tomcat
# Hacer ejecutable gradlew
chmod +x gradlew

# Compilar la aplicación Java
bash gradlew war

# Mover el archivo WAR resultante a la carpeta de aplicaciones de Tomcat
mv build/libs/holamundo-0.0.1-SNAPSHOT-plain.war /opt/tomcat/webapps/AplicacionTomcat.war

# Crear directorio para desplegar la aplicación (opcional)
mkdir /opt/tomcat/webapps/AplicacionTomcat
unzip /opt/tomcat/webapps/AplicacionTomcat.war -d /opt/tomcat/webapps/AplicacionTomcat
# Volvemos a iniciar Tomcat
systemctl start tomcat
# Añadir salida que devuelve la ruta a la aplicación instalada
echo "La aplicación Java ha sido instalada en: /opt/tomcat/webapps/AplicacionTomcat"
