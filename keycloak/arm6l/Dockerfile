FROM arm32v6/openjdk:8u212-jdk-alpine3.9

RUN apk add --no-cache --upgrade bash
RUN apk add wget
RUN wget https://github.com/keycloak/keycloak/releases/download/12.0.4/keycloak-12.0.4.tar.gz && tar -xvzf keycloak-12.0.4.tar.gz && rm -rf keycloak-12.0.4.tar.gz
WORKDIR keycloak-12.0.4
RUN echo 'JAVA_OPTS="$JAVA_OPTS -Djboss.as.management.blocking.timeout=-1"' >> bin/standalone.conf

CMD ["bin/standalone.sh"]
