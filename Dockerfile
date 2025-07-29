# Use an official Python base image
FROM python:3.12-slim

# Install Tkinter dependencies for Debian-based image
RUN apt-get update && \
    apt-get install -y python3-tk && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run your Python script
CMD ["python", "signup_page.py"]
