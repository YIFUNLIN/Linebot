FROM python:3.8

WORKDIR /app

COPY . .

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libgl1-mesa-dri \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev 

# Set the LD_LIBRARY_PATH environment variable
ENV LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

RUN pip install -r requirements.txt

CMD [ "python", "trash_bot.py" ]
