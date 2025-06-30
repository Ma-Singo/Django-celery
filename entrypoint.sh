#!/bin/ash

echo "Apply data migrations" 
python manage.py migrate

exec "$@"
