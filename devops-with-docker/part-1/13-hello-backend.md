# Exercise 1.13: Hello, Backend!

Clone, fork or download a project from https://github.com/docker-hy/material-applications/tree/main/example-backend.

Create a Dockerfile for the project (example-backend). Start the container with port 8080 published.

When you start the container and navigate to http://localhost:8080/ping you should get a "pong" as a response.

Submit the Dockerfile and the command used.

Do not alter the code of the project

TIPS:

- you might need this
- If you have M1/M2 Mac, you might need to build the image with an extra option docker build --platform linux/amd64 -t imagename .

## Commands

See `../example-backend`

```shell
$ docker build -t example-backend:1.13 .
...
$ docker run --rm -p 8080:8080 example-backend:1.13
```
