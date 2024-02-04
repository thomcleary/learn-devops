FROM ubuntu:20.04

WORKDIR /usr/src/exercise

COPY input-website.sh .

RUN apt-get -y update
RUN apt-get -y install curl

RUN chmod +x input-website.sh

CMD ./input-website.sh