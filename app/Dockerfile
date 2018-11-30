FROM debian:stretch-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install --no-install-recommends -y git gcc make librtlsdr-dev pkg-config libusb-1.0-0-dev librtlsdr0 ca-certificates build-essential && \
    git clone --depth=1 https://github.com/mutability/dump1090.git /app && \
    cd /app && \
    make -j2 && \
    apt-get purge -y git gcc make pkg-config libusb-1.0-0-dev && \
    apt-get autoremove -y --purge && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh

EXPOSE 30001 30002 30003 30004 30005 30104

VOLUME /data

ENTRYPOINT ["/entrypoint.sh"]
