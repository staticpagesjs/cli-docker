FROM node:16-alpine3.14

ENV SHELL=/bin/sh
ENV NODE_PATH=/usr/local/lib/node_modules

WORKDIR /project

RUN apk update && apk add git

RUN npm install -g \
  gh-pages@3 \
  rimraf@3 \
  chokidar-cli@3 \
  copyfiles@2 \
  js-yaml@4 \
  sass@1 \
  dotenv@16 \
  js-beautify@1 \
  @static-pages/core@3.0.4 \
  @static-pages/cli@3.0.1 \
  @static-pages/file-reader@3.0.0 \
  @static-pages/file-writer@3.0.1 \
  @static-pages/markdown-reader@2.0.1 \
  @static-pages/yaml-reader@2.0.1 \
  @static-pages/twig-writer@3.0.2 \
  @static-pages/nunjucks-writer@3.0.1 \
  @static-pages/ejs-writer@1.0.1 \
  @static-pages/mustache-writer@1.0.3 \
