# Construct base system.
FROM python:3.13-alpine
RUN apk add --no-cache nnn fish

# Install Python dependencies.
COPY requirements.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set environment variables.
ENV EDITOR="vi"
ENV TERM="xterm-256color"

COPY bin /usr/local/bin

WORKDIR /root/Music
