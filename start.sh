#!/bin/sh -e
if [ ! -d "${ENV_DIR}" ]; then
    echo "ENV_DIR ('${ENV_DIR}') isn't a directory. Interrupting execution."
    exit
fi

CB_PROJECT_NAME="monitoring-server"
cp ${ENV_DIR}/${CB_PROJECT_NAME}/.env .

docker compose down || true
docker compose up -d
