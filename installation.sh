#!/bin/bash

source ./update-env.sh

# UPDATE dockerize project
rootPath=$(pwd)
pathToSrc="${rootPath}/src"

echo "trying to update https://github.com/sokolovvs/dockerize-bank-currencies project"
git pull

echo "trying to copy .env from https://github.com/sokolovvs/dockerize-bank-currencies project"
updateDotEnv "$rootPath/.env"

# INSTALL bank-currencies (bcr)
pathToBcr="${rootPath}/src/bcr"

if [[ ! -d "$pathToBcr" ]]; then
  echo "trying to clone the https://github.com/sokolovvs/bank-currencies repository"
  cd "$pathToSrc" && git clone git@github.com:sokolovvs/bank-currencies.git bcr
fi

echo "trying to update the https://github.com/sokolovvs/bank-currencies repository"
cd "$pathToBcr" && git pull

echo "trying to copy .env from https://github.com/sokolovvs/bank-currencies project"
updateDotEnv "$pathToBcr/.env"
