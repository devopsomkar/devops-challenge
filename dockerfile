# Use slim base image
FROM python:3.12-slim

# Create a non-root user
RUN adduser --disabled-password --gecos "" appuser

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app.py .

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]
