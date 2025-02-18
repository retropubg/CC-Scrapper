# Use a Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application
COPY . .

# Expose the port your app runs on (ejemplo: Flask en el puerto 5000)
EXPOSE 5000

# Comando para ejecutar tu aplicación (dependiendo de tu framework)
CMD ["python", "scrapper.py"]
