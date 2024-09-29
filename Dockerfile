FROM python:3.9-slim-buster

RUN apt update -y && apt install awscli -y
RUN apt-get update && apt-get install -y git
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
