#!/bin/sh
set -e
#export SMTP_SERVER="mail.tuoserver.org"
#export SMTP_USER="tuo@esempio.org"
#export SMTP_PASSWORD="laPassword"
#export SMTP_PORT="465"
#
if [ ! -f /db/ffplayout.db ]; then
    ffplayout -i -u admin -p admin -m contact@example.com --storage "/tv-media" --playlists "/playlists" --public "/public" --logs "/logging" 
fi
#
/usr/bin/ffplayout -l "0.0.0.0:8787"