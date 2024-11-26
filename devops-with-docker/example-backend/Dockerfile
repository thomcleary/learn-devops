FROM golang:1.16
WORKDIR /urs/src/app

COPY . .
RUN go build

RUN adduser --system appuser
USER appuser

ENV REQUEST_ORIGIN=http://localhost:3000
EXPOSE 8080

CMD ["./server"]
