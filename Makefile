NAME = saghul/sylk-in-a-box
VERSION = 0.2.0


.PHONY: all build run

all: build

build:
	docker build -t $(NAME):$(VERSION) .

run:
	-docker run -p 3000:443 --rm --name sylk-in-a-box -t -i $(NAME):$(VERSION) /sbin/my_init -- bash -l
