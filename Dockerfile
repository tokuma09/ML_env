FROM python:3.8-slim


COPY ./requirements.txt ./requirements.txt

RUN apt-get update && \
    apt-get install -y graphviz && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

WORKDIR /project

CMD ["/bin/bash", "-lc", "jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 --allow-root --NotebookApp.token=''"]
# CMD ["/bin/bash"]
