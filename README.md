# docker-golang-dep
Container for building GoLang applications using dep as dependency management. Container is based on alpine.

[![Build Status](https://travis-ci.com/Kartografer/docker-golang-dep.svg?branch=master)](https://travis-ci.com/Kartografer/docker-golang-dep)

# How to Use

To use simply pass your build commands to the docker container for execution. Keep in mind go path is set to `/go`.

**CodeFresh Example**

```yaml
version: '1.0'
steps:
  perform_build:
    image: kartografer/golang-dep:latest
    working_directory: ${{main_clone}}
    description: Performing build...
    commands:
      # Need to have the source in the correct GOPATH folder - let's do that
      - mkdir -p /go/src/github.com
      - ln -s /codefresh/volume/${{CF_REPO_NAME}} /go/src/github.com/${{CF_REPO_NAME}}
      # Install pre-requisites and execute build
      - cd /go/src/github.com/${{CF_REPO_NAME}} && dep ensure -v
      - cd /go/src/github.com/${{CF_REPO_NAME}} && go build main.go
    environment:
      - GOOS=linux
```

# LICENSE
MIT
