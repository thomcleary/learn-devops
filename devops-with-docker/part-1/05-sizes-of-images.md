# Exercise 1.5: Sizes of Images

In the Exercise 1.3 we used `devopsdockeruh/simple-web-service:ubuntu`.

Here is the same application but instead of Ubuntu is using Alpine Linux: `devopsdockeruh/simple-web-service:alpine`.

Pull both images and compare the image sizes. Go inside the Alpine container and make sure the secret message functionality is the same. Alpine version doesn't have bash but it has sh, a more bare-bones shell.

## Answer

```shell
$ docker pull devopsdockeruh/simple-web-service:alpine
...

$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    d44e1dce3987   3 years ago   126MB
devopsdockeruh/simple-web-service   alpine    dd4d367476f8   3 years ago   24.3MB

$ docker run --rm -dit --name secret-message devopsdockeruh/simple-web-service:alpine
909d6745d10b46bd871671e8b4f5005aaffc1a844a970833b1b0906536ee23ea

$ docker exec -it secret-message sh
/usr/src/app # ls
server    text.log
/usr/src/app # cat text.log
2024-11-24 10:49:39 +0000 UTC
2024-11-24 10:49:41 +0000 UTC
2024-11-24 10:49:43 +0000 UTC
2024-11-24 10:49:45 +0000 UTC
2024-11-24 10:49:47 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-11-24 10:49:49 +0000 UTC
2024-11-24 10:49:51 +0000 UTC
...
/usr/src/app # exit

$ docker stop secret-message
```
