# Use the official Python image as the base image
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container and install the required packages
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the pgweb source code into the container
COPY . .

# Expose port 8080 for the application
EXPOSE 8080

# Set the command to start the application
CMD ["python", "pgweb.py"]
