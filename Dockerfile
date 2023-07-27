# Use python 3.8 slim buster image
FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

# Copy your model file into the Docker image
COPY keras_model.h5 ./

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgl1-mesa-glx

RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Install python dependencies
RUN pip install -r requirements.txt

CMD [ "python", "trash_bot.py" ]
