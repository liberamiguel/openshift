# Use the official Python image as the base image
FROM python:3.8

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libssl-dev \
    libffi-dev \
    libpq-dev

# Install Apache Airflow
RUN pip install apache-airflow

# Expose any necessary ports
EXPOSE 8080

# Set up the Airflow environment
CMD ["airflow", "webserver"]
