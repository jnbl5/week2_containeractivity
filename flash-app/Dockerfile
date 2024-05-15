# Use Python image as base image
FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application code into the container
COPY app.py .

# Expose port 5000
EXPOSE 5000

# Command to run the Flask application
CMD ["python", "app.py"]