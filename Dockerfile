FROM ubuntu:18.04

RUN apt-get update && apt-get -y install \
    libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev wget && apt-get install -yq apache2 npm nodejs
