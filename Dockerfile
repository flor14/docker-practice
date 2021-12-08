# set base image from jupyter
FROM python@sha256:ec698176504f2f2d0e50e7e627d7db17be0c8c1a36fe34bb5b7c90c79355f7bb
LABEL version="0.1" maintaner="Florencia D'Andrea" release-date="2021-12-03"

# copy the dependencies file to the working directory 
COPY requirements.txt ./ 

# install dependencies 
RUN pip install -r requirements.txt        
