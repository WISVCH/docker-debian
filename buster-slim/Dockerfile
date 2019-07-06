FROM debian:buster-slim

ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/*

ADD https://ch.tudelft.nl/certs/wisvch.crt /usr/local/share/ca-certificates/wisvch.crt
RUN chmod 644 /usr/local/share/ca-certificates/wisvch.crt && \
    update-ca-certificates
