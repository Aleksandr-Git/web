#!/bin/bash

# создаем условную ссылку
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
# удаляем файл конфигурации по умолчанию
sudo rm -rf /etc/nginx/sites-enabled/default
# перезапускаем вэб-сервер
sudo /etc/init.d/nginx restart

sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test

# запускать из папки в которой лежит hellop.py
sudo gunicorn -b 0.0.0.0:8080 hello:fun

# sudo /etc/init.d/gunicorn restart

# конец!
