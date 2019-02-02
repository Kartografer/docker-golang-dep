FROM golang:1.11.5-alpine3.8

RUN wget https://raw.githubusercontent.com/golang/dep/master/install.sh \
  && chmod +x install.sh \
  && ./install.sh \
  && rm -rf install.sh
