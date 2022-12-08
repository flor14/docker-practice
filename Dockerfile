# set base image from jupyter
FROM jupyter/scipy-notebook:python-3.10.8

RUN apt-get update && apt-get install -y --no-install-recommends build-essential r-base r-cran-randomforest python3.10 python3-pip python3-setuptools python3-dev

RUN pip3 install -r requirements.txt

RUN Rscript -e "install.packages('data.table')"
