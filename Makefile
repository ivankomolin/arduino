.PHONY: *

export IMAGE=ivankomolin/arduino

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}

pull: 
	docker pull ${IMAGE}

run:
	docker run --rm -it ${IMAGE} bash