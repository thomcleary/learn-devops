# 1.4

## Commands

### Terminal 1

```shell
docker run --name missing-dependencies -it ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

### Terminal 2

```shell
docker exec -it missing-dependencies bash
apt update
apt install curl
```
