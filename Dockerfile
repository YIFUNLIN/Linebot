FROM python:3.8

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6
RUN apt-get update && apt-get install -y libgl1

COPY . .

CMD [ "python", "./your_script.py" ]
