IMAGE_NAME := caiojorge/fullcycle

build:
	docker build -t $(IMAGE_NAME) .

size:
	docker images $(IMAGE_NAME)

run:
	docker run --name fullcycle $(IMAGE_NAME) 

clean:
	docker rmi -f $(IMAGE_NAME)

