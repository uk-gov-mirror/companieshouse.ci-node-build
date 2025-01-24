FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-base-build:1.0.3

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG NODE_VERSION=22.13.1

RUN curl --silent --location https://rpm.nodesource.com/setup_22.x  | bash - && \
    dnf install -y  \
    nodejs-$NODE_VERSION \
    java-21-amazon-corretto-headless \
    which && \
    dnf update -y && \
    dnf clean all