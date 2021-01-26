FROM python:3.8

LABEL maintainer="Tokuma Suzuki tokuma.suzuki09@gmail.com"

ENV SHELL /bin/bash

# Copy libraries and shell scripts
COPY ./requirements.txt /root/
COPY ./start_notebook.sh /root/


# Install libraries
RUN apt-get update && \
    apt-get install -y graphviz && \
    # install awscli
    apt-get install -y curl unzip jq less && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    unzip awscliv2.zip &&\
    ./aws/install && \
    apt-get autoremove -y &&\
    apt-get clean &&\
    # Install python libraries
    rm -rf /usr/local/src/* && \
    pip install --upgrade pip && \
    pip install --no-cache-dir -r  /root/requirements.txt && \
    # make jupyter lab settings dir
    mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/notebook-extension &&\
    mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/terminal-extension/plugin.jupyterlab-settings

# copy setting files
COPY ./jupyter_settings/tracker.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/notebook-extension/
COPY ./jupyter_settings/plugin.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/terminal-extension/

# determine working directory
WORKDIR /root/project
COPY ./requirements.txt /root/project


CMD ["/bin/bash", "../start_notebook.sh"]
