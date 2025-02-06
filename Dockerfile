# Original source from https://hub.docker.com/_/node/
FROM node:lts-alpine

RUN apk add git

# See https://github.com/nodejs/docker-node/issues/603
USER node
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm install -g @jovotech/cli

# Default folder for developers to work in
WORKDIR /home/node/app
