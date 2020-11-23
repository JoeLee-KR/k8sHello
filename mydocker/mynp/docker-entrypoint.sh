#!/bin/sh
echo "start here..." >> /var/log/joe

echo "start php7.2-fpm..." >> /var/log/joe
service php7.2-fpm start

echo "start nginx..." >> /var/log/joe
#service nginx start
/usr/sbin/nginx -g "daemon off;"
exec "$@"


