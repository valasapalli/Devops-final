# Step 1: Choose a base image (OpenJDK in this case)
FROM openjdk:11

# Step 2: Copy the packaged JAR file into the Docker container
# Replace 'your-app.jar' with the actual JAR file name
COPY target/your-app.jar /usr/src/app/your-app.jar

# Step 3: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 4: Expose the port the application will run on (optional)
EXPOSE 8080

# Step 5: Run the application
CMD ["java", "-jar", "your-app.jar"]
