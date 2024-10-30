TAG ?= latest
TARGET_PLATFORM ?= linux/amd64
REPOSITORY ?= dejvinczi/resume
PWD = $(shell pwd)
RESUME ?= resume.tex

build-resume:
	docker run --rm -v ${PWD}:/data -t ${REPOSITORY}:${TAG} xelatex ${RESUME}

build:
	docker build . --platform=${TARGET_PLATFORM} -t ${REPOSITORY}:${TAG}

push: build
	docker push ${REPOSITORY}:${TAG}
