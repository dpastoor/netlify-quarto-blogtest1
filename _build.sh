#!/bin/bash

set -ex

QUARTO_VERSION=0.9.30

curl "https://github.com/quarto-dev/quarto-cli/releases/download/v$QUARTO_VERSION/quarto-$QUARTO_VERSION-linux-amd64.deb" -o /tmp/quarto.deb

dpkg -x /tmp/quarto.deb /tmp

# quarto unpacks to /opt/quart/bin 

# default netlify repo dir
cd /opt/build/repo

/tmp/opt/quarto/bin/quarto render

