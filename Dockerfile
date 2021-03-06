FROM python:3

COPY requirements.txt /code/requirements.txt
WORKDIR /code

RUN pip install -r requirements.txt

COPY . /code

ENV PYTHONUNBUFFERED=1

ENV PIETER_DB_HOST=redis
ENV PIETER_DB_PORT=6379
ENV PIETER_API_HOST=0.0.0.0
ENV PIETER_API_PORT=8000

CMD ["./pieter"]
