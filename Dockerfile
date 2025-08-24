# Base image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Copy files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "run.py"]

