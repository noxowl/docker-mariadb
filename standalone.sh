#!/bin/bash

CONTAINER_NAME=''
HOST_DB_PATH=''
ROOT_PASSWD=''
DB_USER=''
DB_PASSWD=''
DB_NAME=''

docker run -d --name "${CONTAINER_NAME}" \
  --network app-tier \
  -v "${HOST_DB_PATH}":/bitnami \
  -e MARIADB_ROOT_PASSWORD="${ROOT_PASSWD}" \
  -e MARIADB_USER="${DB_USER}" \
  -e MARIADB_PASSWORD="${DB_PASSWD}" \
  -e MARIADB_DATABASE="${DB_NAME}" \
  --restart unless-stopped \
  bitnami/mariadb:latest
