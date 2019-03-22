FROM alpine

ENV PACKAGES="\
  py-pip \
  jq \
  curl \
  "

RUN apk add --update $PACKAGES \
  && pip install yq \
  && rm /var/cache/apk/*
