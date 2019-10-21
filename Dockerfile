# Use an official Python runtime as a parent image
FROM python:3.6-slim

# Set the working directory to /app
WORKDIR /simple_web_app

# Copy the current directory contents into the container at /app
ADD . /simple_web_app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 8105 available to the world outside this container
EXPOSE 8105

# Run app.py when the container launches
CMD ["python", "app.py"]