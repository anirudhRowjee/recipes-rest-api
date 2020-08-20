FROM python:3.7-alpine
MAINTAINER Anirudh Rowjee 

# this is to make sure Python prints the output directly
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir app
WORKDIR /app
COPY ./app /app

# create a user specifically to run the Python Application
RUN adduser -D user
# start using this user
USER user

