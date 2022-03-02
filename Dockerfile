FROM python:3.9
FROM nikolaik/python-nodejs:python3.10-nodejs17

RUN apt update && apt upgrade -y
RUN apt install python3-pip -y
RUN apt install ffmpeg -y
RUN apt-get -y install curl gnupg 

RUN npm start
RUN mkdir /app/
COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt

CMD python3 main.py
