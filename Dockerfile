FROM        amazoncorretto:17
RUN         mkdir /app
WORKDIR     /app
COPY        shipping.jar .
ENTRYPOINT  [ "/bin/java", "-jar", "-XX:initialRAMPercentage=80","-XX:initialRAMPercentage=85", "/app/shipping.jar" ]