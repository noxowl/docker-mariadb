#!/bin/bash

CONTAINER_NAME=''
MASTER_CONTAINER_NAME=''
ROOT_PASSWD=''
REPL_USER=''
REPL_PASSWD=''

docker run -d --name "${CONTAINER_NAME}" --link "${MASTER_CONTAINER_NAME}":master \
  -e MARIADB_REPLICATION_MODE=slave \
  -e MARIADB_REPLICATION_USER="${REPL_USER}" \
  -e MARIADB_REPLICATION_PASSWORD="${REPL_PASSWD}" \
  -e MARIADB_MASTER_HOST=master \
  -e MARIADB_MASTER_ROOT_PASSWORD="${ROOT_PASSWD}" \
  bitnami/mariadb:latest
