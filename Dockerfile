# Use an official Python image as the base
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

#create the logs directory
RUN mkdir -p logs

# Copy the bot code into the container
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


#Copy the bot into the container
COPY myclosestbot.py .

# Command to run the bot
CMD ["python", "myclosestbot.py"]
