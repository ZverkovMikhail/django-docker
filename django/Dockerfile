# pull official base image
FROM python:3.12.0a6-alpine3.17

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN apk add libpq-dev
RUN apk add gcc
RUN apk add musl-dev
RUN apk add zlib-dev
RUN apk add jpeg-dev

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./entrypoint.sh /usr/src/entrypoint/entrypoint.sh
RUN chmod +x /usr/src/entrypoint/entrypoint.sh
ENTRYPOINT ["/usr/src/entrypoint/entrypoint.sh"]