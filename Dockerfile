# Use the official Python image as the base image
FROM python:3.11-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the requirements.txt file into the container (COPY 'source' 'target')
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Set environment variables
ENV FLASK_APP = app.py
ENV FLASK_RUN_HOST = 0.0.0.0

# Expose port 5000 to allow external access
EXPOSE 5000

# Start the Flask application
CMD ["flask", "run"]