FROM python:3.8-slim


WORKDIR /project
COPY ./requirements.txt /project/requirements.txt

RUN apt-get update && \
    pipapt-get install -y graphviz && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

CMD ["/bin/bash"]
