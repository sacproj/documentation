.PHONY: build

build:
	rm -rf docs
	hugo --gc --minify -d docs --baseURL https://sacproj.github.io/documentation/
