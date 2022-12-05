# set base image from jupyter
FROM jupyter/base-notebook@sha256:0ae6852796b35765b40c10c8a0156f04f00b1d3c55c4d7d3406e0e4307809de5

USER root

RUN apt-get update && apt-get install -y --no-install-recommends build-essential r-base r-cran-randomforest python3.10 python3-pip python3-setuptools python3-dev

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt

RUN Rscript -e "install.packages('data.table')"

