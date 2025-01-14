FROM openjdk:11-jre

WORKDIR /app

COPY proc-cnab-api.jar /app/api.jar

COPY wait-for-it.sh /wait-for-it.sh

RUN chmod +x /wait-for-it.sh

EXPOSE 8080

CMD ["java", "-jar", "api.jar"]