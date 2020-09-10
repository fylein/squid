all: build

build:
	@docker build --tag=fylehq/squid .
