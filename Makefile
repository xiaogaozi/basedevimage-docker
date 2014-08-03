NAME = xiaogaozi/basedevimage
VERSION = 0.0.1

.PHONY: all build tag_latest release clean

all: build

build:
	rm -rf full_image
	cp -pR image full_image
	docker build -t $(NAME):$(VERSION) --rm full_image

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(NAME) version $(VERSION) is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME)
	@echo "*** Don't forget to create a tag. git tag -a $(VERSION) && git push origin $(VERSION)"

clean:
	rm -rf full_image
