#!/bin/bash

# Ensure the src/app and src/tests directories exist
mkdir -p src/app
mkdir -p src/tests

# Create a simple Flask app
cat <<EOF >src/app/main.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
EOF

# Create requirements.txt for the Flask app
cat <<EOF >src/app/requirements.txt
flask
EOF

# Create a Dockerfile for the Flask app
cat <<EOF >src/Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY ./app /usr/src/app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "main.py"]
EOF

# Create a simple unit test
cat <<EOF >src/tests/test_app.py
import pytest
from main import app

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_home_page(client):
    """Test the home page route."""
    rv = client.get('/')
    assert b'Hello, World!' in rv.data
EOF

echo "src module files have been created."
