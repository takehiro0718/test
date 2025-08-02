# syntax=docker/dockerfile:1
FROM python:3.11-slim

WORKDIR /app

# Install python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Default command runs an interactive Python session
CMD ["python"]
