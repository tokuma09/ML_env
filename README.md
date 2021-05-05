# My ML environment [![Build Status](https://travis-ci.com/tokuma09/ML_env.svg?branch=main)](https://travis-ci.com/tokuma09/ML_env)

This repository contains `Dockerfile` and `requirements.txt` for my ML projects.

Note that it is not supported GPU usage.
## 0. Usage

- `docker build . -t {image name}:{tag}`: Build my docker image
- `docker run -it --rm -p 8888:8888 {image name}:{tag}`:  Running my apps

## 1. Installed Apps

- graphviz
- git
## 2. Installed Python Libraries

1. Basics
   - numpy
   - scipy
   - pandas
     - pyarrow
     - openpyxl
   - matplotlib
   - seaborn

2. ML
   - scikit-learn
   - LightGBM
   - Catboost
   - XGboost
   - PyTorch, torchvision, torchtext
   - Tensorboard
   - Gensim
   - Transformers
   - Optuna
   - SHAP

3. MLOps
   - neptune
   - Hydra

4. Formatter
   - flake8
   - yapf
   - isort

5. Misc
   - google-cloud-strage
   - Jupyter Lab
   - pandas-profiling
   - Pillow


For feather information, You can see `requirements.txt` that describes the list of installed libraries with version.

## Python Envirionment

The above libraries are managed by `poetry`.

- Generate `requirements.txt`: `poetry export -f requirements.txt --output requirements.txt --without-hashes`
