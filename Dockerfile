# Install base-image JDK version 8
FROM openjdk:8

# Copy the shell script in default container directory
COPY mvnw.sh .

# Copy the actual app code in default container directory
COPY . .

# Build app by specified method according to README.md
RUN ./mvnw.sh package

# Open port 8080
EXPOSE 8080

# Launch app -> should produce "Success" text in browser
CMD [ "java", "-jar", "./target/docker-example-1.1.3.jar" ]