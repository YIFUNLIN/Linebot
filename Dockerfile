# Use python 3.8 slim buster image
FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libglib2.0-0 \
    libgl1-mesa-dev \
    libgl1-mesa-glx \
    libgl1

# Install python dependencies
RUN pip install -r requirements.txt

CMD [ "python", "trash_bot.py" ]
