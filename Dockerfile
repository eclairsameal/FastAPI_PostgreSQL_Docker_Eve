# Dockerfile
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Set working directory
WORKDIR /app

# Copy requirements.txt to container
COPY ./app/requirements.txt .

# 安Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY ./app /app
