#!/usr/bin/env bash

PROJECT_PATH=/home/.jywcode/eastmoneyspider/backend
# shellcheck disable=SC2164
cd $PROJECT_PATH
source venv/bin/activate
pip3 install -r requirements.txt

nohup python3 $PROJECT_PATH/manage.py runserver 0:12000  > nohup.out &
nohup python3 $PROJECT_PATH/run_spider.py > nohup.out & 
