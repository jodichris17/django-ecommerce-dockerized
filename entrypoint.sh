#!/bin/sh
#python manage.py makemigrations
python manage.py makemigrations 
python manage.py migrate --no-input
python manage.py collectstatic --no-input
#python manage.py runserver 0.0.0.0:9001
gunicorn ecom.wsgi:application --bind 0.0.0.0:8000
