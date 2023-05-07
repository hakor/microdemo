FROM ubuntu:22.04

RUN apt update -y

RUN apt install -y git telnet curl python3 python3-pip

ADD . /src
WORKDIR /src

RUN pip install Flask

EXPOSE 5000
