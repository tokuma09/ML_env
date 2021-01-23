# My ML environment [![Build Status](https://travis-ci.com/tokuma09/ML_env.svg?branch=main)](https://travis-ci.com/tokuma09/ML_env)

This repository contains `Dockerfile` and `requirements.txt` for my ML projects.

## 0. Usage

- `docker build . -t {image name}:{tag}`: Build my docker image
- `docker run -it --rm -p 8888:8888 {image name}:{tag}`:  Running my apps

## 1. Installed Apps
- awscli
- graphviz
## 2. Installed Python Libraries

1. Basics
   - numpy
   - scipy
   - pandas
   - matplotlib
   - seaborn


2. ML
   - scikit-learn
   - LightGBM:
   - Catboost
   - XGboost
   - PyTorch, torchvision, torchtext
   - Tensorflow, Keras, Tensorboard
   - Gensim
   - Transformers
   - Optuna
   - SHAP

3. MLOps
   - MLflow
   - Kedro
   - Hydra

4. Formatter
   - flake8
   - yapf
   - isort

5. Misc
   - boto3
   - Jupyter Lab
   - pandas-profiling
   - Pillow


For feather information, You can see `requirements.txt` that describes the list of installed libraries with version.
