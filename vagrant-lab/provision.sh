#!/bin/bash

echo "Instalando Apache e configurando..."
sudo yum install -y httpd >/dev/null &2>&1

mkdir -p /var/www/html
cp -r /vagrant/html/* /var/www/html/

sudo chcon -R -t httpd_sys_content_t /var/www/html

sudo systemctl start httpd
sudo systemctl enable httpd
