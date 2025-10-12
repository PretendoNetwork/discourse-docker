#!/bin/bash
set -e

# Download deps
rm -rf .temp
mkdir .temp
git clone https://github.com/discourse/discourse_docker .temp/repo

# Configure launcher
cp assets/default.container.yml .temp/repo/containers/default.yml

# Patch default templates to disable database migration on compile
sed -i 's/echo $pups_command/pups_command="$pups_command --skip-tags migrate,precompile"; echo $pups_command/g' .temp/repo/launcher

# Bootstrap container
cd .temp/repo
./launcher bootstrap default --skip-prereqs
echo "Built container 'local_discourse/default'"
