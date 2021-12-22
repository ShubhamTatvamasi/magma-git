#!/usr/bin/env bash

set -ex

GITHUB_USERNAME=ShubhamTatvamasi
GITHUB_REPO=magma
NEW_BRANCH_NAME=${1}

# Clone Magma repo:
git clone git@github.com:${GITHUB_USERNAME}/${GITHUB_REPO}.git ${NEW_BRANCH_NAME}

# move to the new branch:
cd ${NEW_BRANCH_NAME}

# add upstream repo:
git remote add upstream https://github.com/${GITHUB_REPO}/${GITHUB_REPO}.git

# get latest code from upstream:
git pull --rebase upstream master

# checkout to the new branch:
git checkout -b ${NEW_BRANCH_NAME}
