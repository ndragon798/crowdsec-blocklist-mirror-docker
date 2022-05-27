FROM ubuntu:20.04
RUN apt update && \
    apt install -y curl && \
    curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | bash && \
    apt update && \
    apt install -y crowdsec-blocklist-mirror
ENTRYPOINT [ "/usr/bin/crowdsec-blocklist-mirror", "-c", "/etc/crowdsec/bouncers/crowdsec-blocklist-mirror.yaml" ]
