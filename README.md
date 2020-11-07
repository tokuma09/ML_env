# My ML environment [![Build Status](https://travis-ci.com/tokuma09/ML_env.svg?branch=main)](https://travis-ci.com/tokuma09/ML_env)

This repository contains `Dockerfile` and `requirements.txt` for my ML projects.

## Usage

- `docker build . -t {image name}:{tag}`: Build my docker image
- `docker run -it --rm -p 8888:8888 {image name}:{tag}`:  Running my apps
