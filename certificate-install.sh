#!/bin/bash
sudo ufw allow 'Nginx Full'
sudo certbot --nginx -d $1 -d www.$1 #install certificate
(crontab -l 2>/dev/null; 15 3 * * * /usr/bin/certbot renew --quiet)| crontab -


