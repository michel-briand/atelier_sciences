#!/bin/sh

podman run -it \
       -v ./test:/tmp/test \
       localhost/emacs-builddoc /bin/bash
