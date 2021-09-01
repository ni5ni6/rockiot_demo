FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk update
RUN apk add gcc python3-dev musl-dev

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /
COPY certs /certs

RUN chmod +x /start.sh
CMD /start.sh
