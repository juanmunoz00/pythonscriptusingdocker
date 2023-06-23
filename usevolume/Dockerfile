# Dockerfile

FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script and data file to the container
COPY file_operations.py .
COPY data.txt .

# Define the command to run when the container starts
CMD ["python", "file_operations.py"]
