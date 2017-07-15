#!/bin/bash
sudo certbot --apache -d $1 -d www.$1 #install certificate
https://www.ssllabs.com/ssltest/analyze.html?d=$1&latest #verify the certificate
(crontab -l 2>/dev/null; 15 3 * * * /usr/bin/certbot renew --quiet)| crontab -


