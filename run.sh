#!/bin/sh
set -e
#export SMTP_SERVER="mail.tuoserver.org"
#export SMTP_USER="tuo@esempio.org"
#export SMTP_PASSWORD="laPassword"
#export SMTP_PORT="465"
#
if [ ! -f /db/ffplayout.db ]; then
    ffplayout -i -u admin -p admin -m contact@example.com --storage "/tv-media" --playlists "/playlists" --public "/public" --logs "/logging" --smtp-server "${SMTP_SERVER:-mail.example.org}" --smtp-user "${SMTP_USER:-admin@example.org}" --smtp-password "${SMTP_PASSWORD:-}"  --smtp-port 465 --smtp-starttls false
fi

/usr/bin/ffplayout -l "0.0.0.0:8787"