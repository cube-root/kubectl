#!/bin/sh -l
set -e


mkdir ~/.kube

echo "$KUBE_CONFIG" | base64 -d > ~/.kube/config


sh -c "$*"