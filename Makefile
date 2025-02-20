# Variables
PROJECT_DIR := $(shell pwd)
IMAGE_NAME := jekyll-container
CONTAINER_NAME := jekyll-container-instance
PORT := 4000

# Default target
all: build run serve

# Build the Docker image
build:
	@echo "\033[35mBuilding Docker image...\033[0m"
	docker build -t $(IMAGE_NAME) .

# Run the container if it's not already running
run:
	@echo "\033[35mStarting Docker container...\033[0m"
	docker ps | grep $(CONTAINER_NAME) > /dev/null || \
	docker run -dit --rm \
		-v $(shell pwd):/j-dir/cellrex-docs \
		-p $(PORT):4000 \
		--name $(CONTAINER_NAME) \
		$(IMAGE_NAME) /bin/bash

# Install project dependencies and serve the site
serve: run
	@echo "\033[35mInstalling dependencies and serving the site...\033[0m"
	docker exec -it $(CONTAINER_NAME) sh -c "bundle install && bundle exec jekyll serve --host 0.0.0.0"

# Stop the container if it's running
clean:
	@echo "\033[35mStopping Docker container...\033[0m"
	docker rm -f $(CONTAINER_NAME) || true
