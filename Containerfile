FROM alpine:3.22
RUN apk add --no-cache python3 py3-pip

WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt
