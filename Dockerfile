# Use the official Python image as the base image
FROM python:3.8

# Set environment variable for unbuffered Python output
ENV PYTHONBUFFFERED=1

# Set the working directory in the container
WORKDIR /django

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install project dependencies
RUN pip install -r requirements.txt

# Copy the Django project code into the container
COPY . .


# Start the Django application
CMD python manage.py runserver 0.0.0.0:8000