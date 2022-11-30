#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/usr/local/apps/diploma-rest-api'
VIRTUALENV_BASE_PATH='/usr/local/virtualenvs'

git pull
$VIRTUALENV_BASE_PATH/diploma_api/bin/python3 manage.py migrate
$VIRTUALENV_BASE_PATH/diploma_api/bin/python3 manage.py collectstatic --noinput
supervisorctl restart diploma_api

echo "DONE! :)"
