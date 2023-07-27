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
    libgl1-mesa-glx \
    libgl1-mesa-dev && \
    ln -s /usr/lib/x86_64-linux-gnu/libGL.so.1 /usr/lib/libGL.so.1

# Install python dependencies
RUN pip install -r requirements.txt

CMD [ "python", "trash_bot.py" ]
