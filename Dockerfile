# Use tiangolo/uvicorn-gunicorn-fastapi Docker image with Python 3.9
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY ./app/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the rest of the application code to the container
COPY ./app /app