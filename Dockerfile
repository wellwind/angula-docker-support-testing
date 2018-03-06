FROM node:8.9-alpine

RUN apk update \
  && apk add --update alpine-sdk \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache verify \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

RUN apk add --update --no-cache \
  udev \
  ttf-freefont \
  chromium-chromedriver \
  chromium


