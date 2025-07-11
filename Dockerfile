FROM jboss/wildfly:latest

# Copia el archivo .war a WildFly
COPY barber.war /opt/jboss/wildfly/standalone/deployments/

# Reemplaza el standalone.xml con tu configuración personalizada (con el DataSource)
COPY standalone.xml /opt/jboss/wildfly/standalone/configuration/

# Agrega el módulo de PostgreSQL (driver JDBC)
COPY modules /opt/jboss/wildfly/modules
