#!/usr/bin/env bash
cd /tmp/openlxp-xms/app
python3 manage.py waitdb 
python3 manage.py migrate 
python3 manage.py collectstatic --no-input
python3 manage.py loaddata admin_theme_data.json 
cd /tmp/
pwd 
./start-server.sh