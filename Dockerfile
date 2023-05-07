FROM ubuntu:22.04

RUN apt update -y

RUN apt install -y python3 python3-pip
RUN pip install flask==2.1.*

# install app 
COPY entry.py /

# final configuration
ENV FLASK_APP=entry
EXPOSE 8000

#ADD . /src
#WORKDIR /src

CMD flask run --host 0.0.0.0 --port 8000
