FROM node:16-alpine3.14

ENV NODE_PATH=/usr/local/lib/node_modules

RUN npm install -g \
  rimraf \
  copyfiles \
  @static-pages/core@2.0.2 \
  @static-pages/cli@0.4.0 \
  @static-pages/markdown-reader@0.1.9 \
  @static-pages/yaml-reader@0.1.5 \
  @static-pages/twig-writer@0.1.0

ENTRYPOINT ["staticpages"]

WORKDIR /project
