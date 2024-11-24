# Exercise 1.10: Ports Open

In this exercise, we won't create a new Dockerfile.

The image `devopsdockeruh/simple-web-service` will start a web service in port 8080 when given the argument "server". In Exercise 1.8 you already did an image that can be used to run the web service without any argument.

Use now the -p flag to access the contents with your browser. The output to your browser should be something like:
`{ message: "You connected to the following path: ...`

Submit your used commands for this exercise.

## Answer

```shell
$ docker run --rm -p 8080:8080 web-server
```

`http://localhost:8080`

```json
{ "message": "You connected to the following path: /", "path": "/" }
```
