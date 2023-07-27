FROM jjanzic/docker-python3-opencv

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD [ "python", "trash_bot.py" ]
