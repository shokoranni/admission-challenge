#!/bin/bash
sudo sed -i 's/Require all denied/Require all granted/g' /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2
#sudo /etc/init.d/apache2 restart

