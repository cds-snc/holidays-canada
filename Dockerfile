# Start with a base image containing Java runtime
FROM openjdk:11-jdk-slim

ARG FILENAME

# Add Maintainer Info
LABEL maintainer="paul.craig@cds-snc.ca"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 80 available to the world outside this container
EXPOSE 80

# The application's jar file
ARG JAR_FILE=target/$FILENAME.jar

# Add the application's jar to the container
COPY ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
