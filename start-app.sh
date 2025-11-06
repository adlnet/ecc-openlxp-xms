#!/usr/bin/env bash

python3 manage.py waitdb 
python3 manage.py migrate --skip-checks
python3 manage.py createcachetable 
python3 manage.py loaddata admin_theme_data.json 
python3 manage.py collectstatic --no-input 
cd /opt/app/ 
pwd 
./start-server.sh
