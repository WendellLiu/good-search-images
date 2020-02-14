#!/bin/bash
SCRIPT_NAME="do"
BASEDIR=$(dirname "$0")
IMAGE_VERSION=$VERSION

if [ $# -ne 0  ]; then
        flag="${1}"
        if [ "$flag" == "build" ]; then
                (set -x; docker build --tag="good-search-es:$IMAGE_VERSION" .)
        elif [ "$flag" == "dummy" ]; then
                echo "dummy ${BASEDIR}"
        fi
else
    echo "Usage: \"./${SCRIPT_NAME} build\"";
    exit 1
fi
