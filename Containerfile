FROM python:3.13-alpine
RUN apk add --no-cache zsh

COPY requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt
