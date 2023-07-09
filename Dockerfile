FROM        amazoncorretto:17
RUN         mkdir /app
WORKDIR     /app
COPY        shipping.jar .
COPY        run.sh .
ENTRYPOINT  [ "bash", "run.sh" ]
#ENTRYPOINT  [ "/bin/java", "-jar", "-XX:initialRAMPercentage=80","-XX:initialRAMPercentage=85", "/app/shipping.jar" ]