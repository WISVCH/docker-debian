FROM debian:stretch
MAINTAINER Mark Janssen <mark@praseodym.net>

RUN apt-get update && apt-get install -y apt-utils curl ca-certificates && rm -rf /var/lib/apt/lists/*
RUN curl -o /usr/local/share/ca-certificates/wisvch.crt https://ch.tudelft.nl/certs/wisvch.crt
RUN chmod 644 /usr/local/share/ca-certificates/wisvch.crt
RUN update-ca-certificates
