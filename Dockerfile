# Use an official Python image as the base
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the bot code into the container
COPY myclosestbot.py .

# Install the python-telegram-bot library
RUN pip install python-telegram-bot

# Command to run the bot
CMD ["python", "myclosestbot.py"]