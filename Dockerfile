CMD ["python3", "app.py"]
# Use Python 3.9-slim-buster as the base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Upgrade pip to avoid version-related issues
RUN pip install --upgrade pip

# Install the dependencies from requirements.txt
RUN pip install -r requirements.txt

# Command to run your app
CMD ["python", "app.py"]
