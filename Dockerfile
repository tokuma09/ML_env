FROM ubuntu:20.04

LABEL maintainer="Tokuma Suzuki tokuma.suzuki09@gmail.com"

ENV SHELL /bin/bash
ENV DEBIAN_FRONTEND noninteractive

# Copy libraries and shell scripts
COPY ./requirements.txt /root/
COPY ./start_notebook.sh /root/

# Install libraries
RUN apt-get update && \
    apt-get install -y python3.8 python3.8-venv python3-pip && \
    apt-get install -y graphviz git lsb-release lsb-core && \
    apt-get autoremove -y &&\
    apt-get clean &&\
    # Install python libraries
    rm -rf /usr/local/src/* && \
    pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r  /root/requirements.txt && \
    # make jupyter lab settings dir
    mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/notebook-extension &&\
    mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/terminal-extension/plugin.jupyterlab-settings


# copy setting files
COPY ./jupyter_settings/tracker.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/notebook-extension/
COPY ./jupyter_settings/plugin.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/terminal-extension/

# determine working directory
WORKDIR /root/project

CMD ["/bin/bash", "../start_notebook.sh"]
