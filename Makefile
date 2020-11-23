NAME=project
VERSION=latest
IMG_W_TAG=${NAME}:${VERSION}
PORT=8888
P2P=${PORT}:${PORT}
VOLUME=${shell pwd}
V2V=${VOLUME}:/root/project

build:
		@docker build  -t ${IMG_W_TAG} .
run:
		@docker run -it --rm -v ${V2V} -p ${P2P} ${IMG_W_TAG}
