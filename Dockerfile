FROM emscripten/emsdk:latest

RUN apt-get update
RUN apt-get install dh-autoreconf git curl build-essential autoconf libtool python3-dev -y

WORKDIR /build


