#!/bin/bash

# Download deps
rm -rf temp &> /dev/null
mkdir temp &> /dev/null
git clone https://github.com/discourse/discourse_docker temp/repo &> /dev/null

# Get base version
image_line=$(grep '^image=' temp/repo/launcher)
version="${image_line##*:}"
version="${version%\"}"

printf $version
