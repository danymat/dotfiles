#!/bin/bash
set -e

# This script will be executed on the first startup of each new container with the "my-resources" feature enabled.
# Arbitrary code can be added in this file, in order to customize Exegol (dependency installation, configuration file copy, etc).
# It is strongly advised **not** to overwrite the configuration files provided by exegol (e.g. /root/.zshrc, /opt/.exegol_aliases, ...), official updates will not be applied otherwise.

# Exegol also features a set of supported customization a user can make.
# The /opt/supported_setups.md file lists the supported configurations that can be made easily.

echo "Download navi"
curl -L https://github.com/denisidoro/navi/releases/download/v2.24.0/navi-v2.24.0-aarch64-unknown-linux-gnu.tar.gz -o navi.tar.gz
tar xvzf navi.tar.gz
mv ./navi ./my-resources/bin
rm navi.tar.gz

echo "Download copyparty"
curl -L https://github.com/9001/copyparty/releases/latest/download/copyparty-sfx.py -o copyparty.py
chmod +x ./copyparty.py
mv ./copyparty.py ./my-resources/bin

echo "copy local navi config"
cp -R ~/.config/navi ./my-resources/setup/navi

echo "move user setup for post processing"
cp ./load_user_setup.sh ./my-resources/setup/
