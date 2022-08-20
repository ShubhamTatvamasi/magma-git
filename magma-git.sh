#!/usr/bin/env bash

set -e

DEFAULT_GITHUB_USERNAME=ShubhamTatvamasi
DEFAULT_BRANCH_NAME=master
MAGMA_REPO=magma

read -p "What's your GitHub Username? (default: ${DEFAULT_GITHUB_USERNAME}): " GITHUB_USERNAME
GITHUB_USERNAME="${GITHUB_USERNAME:-${DEFAULT_GITHUB_USERNAME}}"

read -p "What's your GitHub Username? (default: ${DEFAULT_BRANCH_NAME}): " BRANCH_NAME
BRANCH_NAME="${BRANCH_NAME:-${DEFAULT_BRANCH_NAME}}"

# Clone Magma repo:
git clone git@github.com:${GITHUB_USERNAME}/${MAGMA_REPO}.git ${BRANCH_NAME}

# move to the new branch:
cd ${BRANCH_NAME}

# add upstream repo:
git remote add upstream https://github.com/${MAGMA_REPO}/${MAGMA_REPO}.git

# get latest code from upstream:
git pull --rebase upstream master

# checkout to the new branch:
git checkout -b ${BRANCH_NAME}

echo "cd ${BRANCH_NAME}"
