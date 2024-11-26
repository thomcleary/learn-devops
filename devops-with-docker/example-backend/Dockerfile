FROM golang:1.16-alpine
WORKDIR /urs/src/app

COPY . .

RUN go build && \
    adduser --system appuser

USER appuser
ENV REQUEST_ORIGIN=http://localhost:3000
EXPOSE 8080

CMD ["./server"]
