# set base image from jupyter
FROM jupyter/base-notebook@sha256:357253ce22669889f068e908de52d25705e2dff5a01e7b59c83e6f7dac928cb5

RUN apt-get update && apt-get install -y --no-install-recommends build-essential r-base r-cran-randomforest python3.6 python3-pip python3-setuptools python3-dev

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt

RUN Rscript -e "install.packages('data.table')"
