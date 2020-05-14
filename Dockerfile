FROM apiaryio/emcc:latest

RUN apt-get update
RUN apt-get install dh-autoreconf git curl build-essential autoconf libtool  -y

# Yarn 
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -  && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get -y update && apt-get -y install yarn

# Pull the Wasm branch
RUN mkdir -p /app
RUN cd /app && git clone https://github.com/ElementsProject/libwally-core.git 
WORKDIR /app/libwally-core


