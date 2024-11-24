FROM golang:1.16
WORKDIR /urs/src/app

COPY . .
RUN go build

EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:3000

CMD ["./server"]
