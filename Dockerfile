FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-base-build:1.0.3

RUN dnf update -y && \
    dnf install -y  \
    nodejs \
    npm \
    java-21-amazon-corretto-headless && \
    dnf clean all
