FROM golang:1.16
WORKDIR /urs/src/app

COPY . .
RUN go build

EXPOSE 8080

CMD ["./server"]
