FROM python:3.10-slim-buster

RUN apt update -y && apt install awscli -y
RUN apt-get update && apt-get install -y git
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt
RUN pip install --upgrade pip


CMD ["python3", "app.py"]
