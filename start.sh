#!/bin/sh

#export WAIT_HOSTS=backend:3306;
#./wait;
echo "starting...";
python3 manage.py runserver 0.0.0.0:8000;

