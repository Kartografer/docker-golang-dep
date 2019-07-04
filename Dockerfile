FROM golang:1.12.6-stretch

RUN wget https://raw.githubusercontent.com/golang/dep/master/install.sh \
  && chmod +x install.sh \
  && ./install.sh \
  && rm -rf install.sh
