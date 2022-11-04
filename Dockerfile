FROM node:current-alpine

# Working from /app
WORKDIR /app

COPY data/ data/
COPY src/ src/
COPY LICENSE .
COPY package.json .
COPY yarn.lock .
COPY default_config.json config.json

# Install
RUN yarn install

CMD [ "node", "src/index.js", "config.json" ]
