build:
	docker build -t techtheoryio/rabbit-amazon-forwarder -f Dockerfile .

push: test build
	docker push techtheoryio/rabbit-amazon-forwarder

test:
	docker-compose run --rm tests

dev:
	go build
