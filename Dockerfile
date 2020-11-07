FROM python:3.8

LABEL maintainer="Tokuma Suzuki tokuma.suzuki09@gmail.com"

ENV SHELL /bin/bash

# Copy libraries and shell scripts
COPY ./requirements.txt /root/
COPY ./start_notebook.sh /root/

#RUN apt-get update && \
#    apt-get install -y graphviz && \
#    pip install --upgrade pip && \
#    pip install -r requirements.txt

RUN apt-get update && \
    apt install -y fonts-ricty-diminished && \
    pip install --upgrade pip && \
    pip install jupyterlab

# jupyter lab settings
RUN mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/notebook-extension &&\
    mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/terminal-extension/plugin.jupyterlab-settings

# copy setting files
COPY ./jupyter_settings/tracker.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/notebook-extension/
COPY ./jupyter_settings/plugin.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/terminal-extension/

# determine working directory
WORKDIR /root/project


CMD ["/bin/bash", "../start_notebook.sh"]
