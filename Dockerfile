# Original source from https://hub.docker.com/_/node/
FROM node:lts-alpine

RUN apk add --update git

# See https://github.com/nodejs/docker-node/issues/603
USER node
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm install -g @jovotech/cli

# Clone webhook-debugger and install dependencies
RUN git clone https://github.com/jovotech/jovo-webhook-debugger.git /home/node/app/debug

RUN export NODE_OPTIONS=--openssl-legacy-provider && cd /home/node/app/debug && npm run setup

WORKDIR /home/node/app
