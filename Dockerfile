FROM python:3.8

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# 替换这一行
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

COPY . .

CMD [ "python", "./your_script.py" ]
