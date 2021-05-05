FROM ubuntu:20.04
LABEL maintainer="Tokuma Suzuki tokuma.suzuki09@gmail.com"

ENV SHELL /bin/bash
ENV DEBIAN_FRONTEND noninteractive

# determine working directory
WORKDIR /root/project
COPY ./requirements.txt /root/
COPY ./start_notebook.sh /root/

# Install libraries
RUN apt-get update && \
    apt-get install -y python3.8 python3.8-venv python3-pip &&\
    apt-get install -y graphviz git curl && \
    # clean-up
    apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /usr/local/src/* &&\
    # add libraries
    pip3 install --upgrade pip setuptools wheel &&\
    pip3 install --no-cache-dir -r  /root/requirements.txt &&\
    nbdime config-git --enable --global


CMD ["/bin/bash", "../start_notebook.sh"]
