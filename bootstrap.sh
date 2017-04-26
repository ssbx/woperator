#!/bin/sh

npm install --save-dev
bower install

echo "You need a running Sysmo server."
echo -n "Sysmo server host (localhost): "
read SYSMO_SERVER
echo -n "Sysmo server port (9759): "
read SYSMO_PORT


if [ "$SYMSO_SERVER" = "" ]; then
    SYSMO_SERVER="localhost"
fi

if [ "$SYMSO_PORT" = "" ]; then
    SYSMO_PORT="9759"
fi

echo "
.PHONY: run test build build-preview

run:
	NODE_ENV=\"dev\" SYSMO_SERVER=\"$SYSMO_SERVER\" SYSMO_PORT=\"$SYSMO_PORT\" gulp serve

build:
	NODE_ENV=\"prod\" gulp

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
