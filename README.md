# fc-devops-docker-challenge-golang

## DevOps | Iniciando com Docker - Desafio Docker

Image Docker: [https://hub.docker.com/repository/docker/hernanijunior/docker-golang-challenger/](https://hub.docker.com/repository/docker/hernanijunior/docker-golang-challenger/).

Size: 300kB
## 1. Buildando a imagem docker

```bash
build: docker build . -t hernanijunior/docker-golang-challenger:latest
```

## 2. Criando o container

```bash
docker run --rm --name challenge hernanijunior/docker-golang-challenger
```

Resultado:
> Full Cycle Rocks!
