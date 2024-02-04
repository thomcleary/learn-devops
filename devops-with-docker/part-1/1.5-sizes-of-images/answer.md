# 1.5 Sizes of Images

## Image Sizes

```shell
docker images -a
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
ubuntu                              latest    fd1d8f58e8ae   9 days ago    77.9MB
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago   15.7MB
```

## Commands

```shell
docker pull devopsdockeruh/simple-web-service:alpine
docker run -d -it --name sizes-of-images devopsdockeruh/simple-web-service:alpine
docker exec -it sizes-of-images sh
ls
cat text.log | grep "secret message" -i
exit
docker stop sizes-of-images
```

## Message

Secret message is: 'You can find the source code here: <https://github.com/docker-hy>'
