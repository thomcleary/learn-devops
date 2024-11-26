FROM golang:1.16 AS build-stage
WORKDIR /usr/src/app
COPY . .
RUN CGO_ENABLED=0 go build -o server && strip server

FROM scratch
COPY --from=build-stage /usr/src/app/server /server
ENV REQUEST_ORIGIN=http://localhost:3000
EXPOSE 8080
CMD ["./server"]
