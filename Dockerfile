FROM ubuntu:20.04
MAINTAINER David Esler <david.esler@starlab.io>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
        doxygen \
        git \
        graphviz \
        make \
        texlive-fonts-extra \
        texlive-fonts-recommended \
        texlive-lang-all \
        texlive-latex-extra \
        texlive-latex-recommended \
        && \
    apt-get -qq autoremove -y && apt-get -qq clean && \
    rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

CMD ["/bin/bash"]
