FROM ubuntu:bionic

RUN apt-get update && apt-get install -y python python-dev python3.6 python3.6-dev python-pip virtualenv libssl-dev libpq-dev git build-essential libfontconfig1 libfontconfig1-dev zip python3-pip
RUN pip3 install setuptools pip --upgrade --force-reinstall
WORKDIR /usr/src/app
COPY *.py requirements.txt ./
RUN pip3 install --target ./ -r requirements.txt
RUN zip -r python.zip .
