FROM quay.io/keycloak/keycloak

ARG KEYCLOAK_HOME=/opt/jboss/keycloak
RUN curl -L https://repo1.maven.org/maven2/org/mindrot/jbcrypt/0.4/jbcrypt-0.4.jar > $KEYCLOAK_HOME/standalone/deployments/jbcrypt-0.4.jar
RUN /opt/jboss/keycloak/bin/jboss-cli.sh --command="module add --name=org.mindrot.jbcrypt --resources=$KEYCLOAK_HOME/standalone/deployments/jbcrypt-0.4.jar"

RUN curl -L https://github.com/leroyguillaume/keycloak-bcrypt/releases/download/1.5.0/keycloak-bcrypt-1.5.0.jar > $KEYCLOAK_HOME/standalone/deployments/keycloak-bcrypt-1.5.0.jar