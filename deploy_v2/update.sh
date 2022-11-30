#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/usr/local/apps/diploma-rest-api'

git pull
python manage.py migrate
python manage.py collectstatic --noinput
supervisorctl restart diploma_api

echo "DONE! :)"
