FROM alpine:3.6
LABEL maintainer="RedLab66" \
      org.label-schema.vcs-url="https://github.com/redlab66/docker-gitlabci-helm"

ENV HELM_VERSION    "2.12.2"
ENV HELM_FILENAME   "helm-v${HELM_VERSION}-linux-amd64.tar.gz"

RUN apk add --no-cache --virtual .deps curl bash

RUN set -ex                                                                             \
 && curl -sSL https://storage.googleapis.com/kubernetes-helm/${HELM_FILENAME} | tar xz  \
 && mv linux-amd64/helm /usr/local/bin/helm                                             \
 && rm -rf linux-amd64
