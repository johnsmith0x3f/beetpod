FROM python:3.13-alpine
RUN apk add --no-cache flac fish nnn

COPY requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# TODO: copy and build custom plugins.
COPY bin /usr/local/bin

ENV SHELL="/usr/bin/fish"
ENV TERM="xterm-256color"

WORKDIR /root/Music
