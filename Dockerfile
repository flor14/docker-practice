# set base image from jupyter
FROM jupyter/scipy-notebook@sha256:b6a4ce777b837496d5612b7ce4efba9aa015576cb6993817721b8d293a7c2a3c
LABEL version="0.1" maintaner="Florencia D'Andrea" release-date="2021-12-03"

# copy the dependencies file to the working directory 
COPY requirements.txt ./ 

# install dependencies 
RUN pip install -r requirements.txt        
