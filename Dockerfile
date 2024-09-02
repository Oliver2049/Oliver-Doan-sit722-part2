# Dockerfile for book_catalog microservice
# Dockerfile for book_catalog microservice
FROM python:3.9.5-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY /book_catalog/ /app/

# Copy the requirements file into the container at /app
COPY /book_catalog/requirements.txt /app/

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt 

# Define environment variable
ENV DB_url="postgresql://oliver_722_user:aoNCMv9FbzejcA0dKXIpoKJhZXQvONJp@dpg-craq67lsvqrc73epj7p0-a.oregon-postgres.render.com/oliver_722"

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]