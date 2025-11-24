#!/bin/bash

set -x
set +e

POD=${1:-my-pod}
CONT1=${2:-gitea-act_runner}
cont1image=gitea/act_runner
CONT2=${3:-emacs-builddoc}
cont2image=localhost/emacs-builddoc:1

fatal() {
    echo "$@" >&2
    exit 1
}

pod_id=$(podman pod create --name=$POD)
if [ $? -ne 0 ]; then
    fatal create pod
fi

cont1_id=$(podman create --pod=$POD --name=$CONT1 -t $cont1image)
if [ $? -ne 0 ]; then
    fatal create cont1
fi

cont2_id=$(podman create --pod=$POD --name=$CONT2 -t $cont2image)
if [ $? -ne 0 ]; then
    fatal create cont2
fi

cd ~/.config/systemd/user

podman generate systemd --new --files --name $POD

# DEPRECATED command:
# It is recommended to use Quadlets for running containers and pods under systemd.

# Please refer to podman-systemd.unit(5) for details.
