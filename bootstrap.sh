#!/bin/sh

npm install --save-dev
bower install

echo "
.PHONY: run test build build-preview

run:
	gulp serve

test:
	gulp serve:test

build:
	gulp

build-preview: build
	gulp serve:dist

clean:
	rm -rf dist

clean_all: clean
	rm -rf node_modules
	rm -rf bower_components
	rm -rf test/bower_components
	rm -rf dist
	rm -rf .tmp
	rm -f Makefile

" > Makefile
