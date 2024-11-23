# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libglib2.0-0 libsm6 libxrender1 libxext6

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the Flask app will run on
EXPOSE 4000

# Run the Flask application when the container launches
CMD ["python", "app.py"]
