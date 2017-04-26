# Build env

Install a recent version of node:
```sh
$ npm cache clean --local --force
$ npm install --local n
$ export N_PREFIX="~/bin/nodes"
$ mkdir -p ~/bin/nodes
$ n latest
$ ln -s ~/bin/nodes/bin/node ~/bin/node
$ ln -s ~/bin/nodes/bin/npm ~/bin/npm
$ which node
/home/omer/bin/node
$ which npm
/home/omer/bin/npm
```

Install dependencies:
```sh
$ ./bootstrap.sh
```

Start development web server:
```sh
$ make run
```

Develop.
