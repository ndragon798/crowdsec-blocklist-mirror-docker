# crowdsec-blocklist-mirror-docker

A dockerized version of https://docs.crowdsec.net/docs/next/bouncers/blocklist-mirror/

[![Docker Pulls](https://img.shields.io/docker/pulls/nathaneaston/crowdsec-blocklist-mirror.svg)](https://hub.docker.com/repository/docker/nathaneaston/crowdsec-blocklist-mirror)

Please pull a copy of the config from https://docs.crowdsec.net/docs/next/bouncers/blocklist-mirror/ under the config section
```
version: '3'
services:
  mirror:
    image: nathaneaston/
    volumes:
      - ./crowdsec-blocklist-mirror.yaml:/etc/crowdsec/bouncers/crowdsec-blocklist-mirror.yaml
    ports:
      - 41412:41412
    restart: always
```
