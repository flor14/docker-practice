# docker-practice

First I build the Docker image and save it with the name `jupyter-dash`

```bash
docker build -t flor14/jupyter-dash .
```

Then I run the container with the command 

```bash
 docker run -it -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes jupyter-dash
```

Push the image to DockerHub

```bash
docker push flor14/jupyter-dash:latest
```