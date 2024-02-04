# 1.3 Secret Message

## Commands

```shell
docker pull devopsdockeruh/simple-web-service:ubuntu
docker run -d -it --name secret-message devopsdockeruh/simple-web-service:ubuntu
docker exec -it secret-message bash
ls
cat text.log | grep "secret message" -i
```

## Message

Secret message is: 'You can find the source code here: <https://github.com/docker-hy>'
