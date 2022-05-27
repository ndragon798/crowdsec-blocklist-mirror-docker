# crowdsec-blocklist-mirror-docker
https://docs.crowdsec.net/docs/next/bouncers/blocklist-mirror/ in a docker container

A dockerized version of https://docs.crowdsec.net/docs/next/bouncers/blocklist-mirror/

[![Docker Pulls](https://img.shields.io/docker/pulls/nathaneaston/alertmanager_gotify_bridge-docker.svg)](https://hub.docker.com/repository/docker/nathaneaston/alertmanager_gotify_bridge-docker)

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
