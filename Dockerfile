FROM python:3.8-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Set the LD_LIBRARY_PATH environment variable
ENV LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

RUN pip install -r requirements.txt

CMD [ "python", "trash_bot.py" ]
