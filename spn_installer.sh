#!/bin/bash
if [ "$SCRIPT_INSTALLED" = false ]; then
    echo "Installing the main script from $SCRIPT_URL"
    
    apt update
    apt install wget -y
    wget https://raw.githubusercontent.com/NL-TCH/spn/NL-TCH-patch-1/tools/install.sh -P /data/
    chmod +x /data/install.sh
    yes | /data/install.sh -S -y -n -l /data/config.json
    cp /data/config.json /opt/safing/spn/
    export SCRIPT_INSTALLED=true
fi