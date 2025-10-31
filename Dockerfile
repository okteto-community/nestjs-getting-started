FROM node:22
WORKDIR /app

RUN npm install -g npm@11.6.2
COPY package.json .
RUN npm install

COPY eslint.config.mjs nest-cli.json tsconfig.build.json tsconfig.json /app
COPY src src