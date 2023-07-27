# Use python 3.8 slim buster image
FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    libsm6 \
    libxext6 \
    libxrender-dev

# Install python dependencies
RUN pip install opencv-python-headless

CMD [ "python", "trash_bot.py" ]
