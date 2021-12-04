# set base image
FROM jupyter/base-notebook:lab-3.2.4

# copy the dependencies file to the working directory
COPY requirements.txt ./ 

# install dependencies
RUN pip install -r requirements.txt        