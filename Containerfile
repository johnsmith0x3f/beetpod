FROM python:3.13-alpine
RUN apk add --no-cache flac fish git nnn

COPY requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt

ENV PATH="/root/.local/bin:$PATH"
ENV SHELL="/usr/bin/fish"
ENV TERM="xterm-256color"

WORKDIR /root/Music
