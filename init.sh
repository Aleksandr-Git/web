#!/bin/bash

# создаем условную ссылку
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
# удаляем файл конфигурации по умолчанию
sudo rm -rf /etc/nginx/sites-enabled/default
# перезапускаем вэб-сервер
sudo /etc/init.d/nginx restart
# конец
