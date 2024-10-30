FROM ubuntu:latest

RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
    make \
    texlive-fonts-recommended \
    texlive-lang-english \
    texlive-xetex && \
    apt-get autoclean && apt-get --purge --yes autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /data
VOLUME ["/data"]
