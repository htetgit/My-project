# Use the official Go image as a base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the local code into the container
COPY . .

# Build the Go application
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 30639

# Command to run the executable
CMD ["./main"]