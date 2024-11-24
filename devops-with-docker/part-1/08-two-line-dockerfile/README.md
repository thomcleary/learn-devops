# Exercise 1.8: Two Line Dockerfile

By default our devopsdockeruh/simple-web-service:alpine doesn't have a CMD. Instead, it uses ENTRYPOINT to declare which application is run.

We'll talk more about ENTRYPOINT in the next section, but you already know that the last argument in docker run can be used to give a command or an argument.

As you might've noticed it doesn't start the web service even though the name is "simple-web-service". A suitable argument is needed to start the server!

Try docker run devopsdockeruh/simple-web-service:alpine hello. The application reads the argument "hello" but will inform that hello isn't accepted.

In this exercise create a Dockerfile and use FROM and CMD to create a brand new image that automatically runs server.

The Docker documentation CMD says a bit indirectly that if a image has ENTRYPOINT defined, CMD is used to define it the default arguments.

Tag the new image as "web-server"

Return the Dockerfile and the command you used to run the container.

Running the built "web-server" image should look like this:

```shell
$ docker run web-server
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
- using env:   export GIN_MODE=release
- using code:  gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
```

- We don't have any method of accessing the web service yet. As such confirming that the console output is the same will suffice.
- The exercise title may be a useful hint here.

## Answer

```shell
$ docker build -t web-server .
[+] Building 2.6s (6/6) FINISHED                                    docker:desktop-linux
 => [internal] load build definition from Dockerfile                                0.0s
 => => transferring dockerfile: 98B                                                 0.0s
 => [internal] load metadata for docker.io/devopsdockeruh/simple-web-service:alpin  0.0s
 => [internal] load .dockerignore                                                   0.0s
 => => transferring context: 2B                                                     0.0s
 => [1/1] FROM docker.io/devopsdockeruh/simple-web-service:alpine@sha256:dd4d36747  2.3s
 => => resolve docker.io/devopsdockeruh/simple-web-service:alpine@sha256:dd4d36747  2.2s
 => [auth] devopsdockeruh/simple-web-service:pull token for registry-1.docker.io    0.0s
 => exporting to image                                                              0.1s
 => => exporting layers                                                             0.0s
 => => exporting manifest sha256:47c8cc40c49a2dbd8bbc1df87115ee65ad294e00f9b3512f7  0.0s
 => => exporting config sha256:e10a04f0292d811eb02da7d6526d1e215c8b8e62aa36cc69177  0.0s
 => => exporting attestation manifest sha256:aa14142c57c712f56ab11e8f010c1b3f564cc  0.0s
 => => exporting manifest list sha256:fb9b5835fbb231387461483afec0bd466fbb146ba8fe  0.0s
 => => naming to docker.io/library/web-server:latest                                0.0s
 => => unpacking to docker.io/library/web-server:latest                             0.0s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/03f3fb86h7fnk66be9z771ypi

$ docker run --rm web-server
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:	export GIN_MODE=release
 - using code:	gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
```
