#!/bin/bash

sudo apt install phpmyadmin
echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf

sudo systemctl restart apache2.service
