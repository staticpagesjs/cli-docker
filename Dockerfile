FROM node:16-alpine3.14

ENV NODE_PATH=/usr/local/lib/node_modules

WORKDIR /project

RUN npm install -g \
  rimraf@3 \
  copyfiles@2 \
  @static-pages/core@2.0.2 \
  @static-pages/cli@1.0.0 \
  @static-pages/file-reader@2.0.1 \
  @static-pages/file-writer@2.2.2 \
  @static-pages/markdown-reader@1.0.2 \
  @static-pages/yaml-reader@1.0.1 \
  @static-pages/twig-writer@1.1.1 \
  @static-pages/nunjucks-writer@1.0.0 \
  @static-pages/ejs-writer@0.1.1 \
  @static-pages/mustache-writer@0.1.0
