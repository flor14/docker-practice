# docker-practice

First, you can build the Docker image and save it with the name `jupyter-demo`

```bash
docker build -t flor14/jupyter-demo .
```

Then, you can run the container with the command 

```bash
 docker run -it --rm -p 8888:8888 -v $PWD:/home/jovyan/work/ jupyter-demo
```

