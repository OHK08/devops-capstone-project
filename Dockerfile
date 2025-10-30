# Use Python 3.9 slim as the base image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements file into the container
COPY requirements.txt .

# Install dependencies without using cache to reduce image size
RUN pip install --no-cache-dir -r requirements.txt

# Copy the service package into the container
COPY service /app/service

# Create a non-root user and switch to it
RUN useradd --uid 1000 theia && chown -R theia /app
USER theia

# Expose the port used by the Flask app
EXPOSE 8080

# Start the app using gunicorn
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-level=info", "service:app"]
