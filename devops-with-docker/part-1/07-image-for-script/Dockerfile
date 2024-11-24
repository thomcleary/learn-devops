FROM ubuntu:22.04
WORKDIR /app

RUN apt-get update && apt-get -y install curl

COPY ./script.sh .
RUN chmod +x script.sh

CMD ["sh", "./script.sh"]
