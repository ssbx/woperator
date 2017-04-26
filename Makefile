.PHONY: run test build build-preview

run:
	gulp serve

test:
	gulp serve:test

build:
	gulp

build-preview: build
	gulp serve:dist
