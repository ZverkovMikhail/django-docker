#!/bin/bash
sudo docker compose exec web python manage.py makemigrations
sudo docker compose exec web python manage.py migrate
sudo docker compose exec web python manage.py createsuperuser