#!/bin/bash

SQUID_PATH='/opt/squid'
PORT=80

docker pull sameersbn/squid

docker run --name squid -d \
  --restart=always \
  -p ${PORT}:${PORT} \
  -v ${SQUID_PATH}/squid.conf:/etc/squid3/squid.conf \
  -v ${SQUID_PATH}/cache:/var/spool/squid3 \
  sameersbn/squid
