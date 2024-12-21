# Use the official OpenJDK image as a base
FROM openjdk:11
# Set the working directory in the container
WORKDIR /app

# Copy the Java source code into the container
COPY SumOfThreeIntegers.java .

# Compile the Java program
RUN javac SumOfThreeIntegers.java

# Command to run the Java program
CMD ["java", "SumOfThreeIntegers"]