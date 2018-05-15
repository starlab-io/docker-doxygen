FROM ubuntu:18.04
MAINTAINER David Esler <david.esler@starlab.io>

RUN mkdir /source && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -qq install -y \
        --no-install-recommends make doxygen graphviz && \
    apt-get -qq autoremove -y && apt-get -qq clean && \
    rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

VOLUME ["/source"]
WORKDIR /source
CMD ["/bin/bash"]
