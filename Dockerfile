FROM golang:1.11.5-alpine3.8

RUN apk --update add git \
  && rm -rf /var/lib/apt/lists/* \
  && rm /var/cache/apk/*

RUN wget https://raw.githubusercontent.com/golang/dep/master/install.sh \
  && chmod +x install.sh \
  && ./install.sh \
  && rm -rf install.sh
