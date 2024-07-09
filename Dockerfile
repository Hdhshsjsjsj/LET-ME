FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /LET-ME
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /LET-ME
WORKDIR /LET-ME
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
