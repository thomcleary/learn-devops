# Exercise 1.6: Hello Docker Hub

Run docker run -it `devopsdockeruh/pull_exercise`.

The command will wait for your input.

Navigate through the Docker hub to find the docs and Dockerfile that was used to create the image.

Read the Dockerfile and/or docs to learn what input will get the application to answer a "secret message".

Submit the secret message and command(s) given to get it as your answer.

## Answer

```shell
$ docker run -it --rm devopsdockeruh/pull_exercise
Unable to find image 'devopsdockeruh/pull_exercise:latest' locally
latest: Pulling from devopsdockeruh/pull_exercise
67c4f504c224: Download complete
165f32bf4e94: Download complete
6f595b2fc66d: Download complete
8e402f1a9c57: Download complete
5e2195587d10: Download complete
Digest: sha256:7c0635934049afb9ca0481fb6a58b16100f990a0d62c8665b9cfb5c9ada8a99f
Status: Downloaded newer image for devopsdockeruh/pull_exercise:latest
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

- <https://hub.docker.com/r/devopsdockeruh/pull_exercise>
