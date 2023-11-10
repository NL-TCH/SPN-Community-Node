#!/bin/bash
if [ "$SCRIPT_INSTALLED" = false ]; then
    /data/spn_installer.sh
    /data/spn_startup.sh
else
    /data/spn_startup.sh
fi
