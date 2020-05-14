# docker-libwally-wasm
Docker Image for compiling Libwally to WebAssembly  

## Bash one-liner

```sh
$ curl https://raw.githubusercontent.com/tiero/docker-libwally-wasm/master/compile | bash
```
You'll find in in the current direcotry a `dist` folder containing the wasm artifacts.


## Build locally

```sh
$ git clone https://github.com/tiero/docker-libwally-wasm.git
# Make changes to build_wasm.sh for selecting exported methods to be compiled
$ bash ./compile
```
