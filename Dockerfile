FROM python:3.6
MAINTAINER Tuvshinot

ENV PYTHONNUNBUFFERED 1
ENV REDIS_HOST "redis"

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /src
WORKDIR /src
COPY ./src /src


