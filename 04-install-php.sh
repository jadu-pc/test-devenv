#!/bin/bash

sudo apt install php libapache2-mod-php php-cli php-cgi php-mysql php-pgsql
sudo systemctl restart apache2.service
