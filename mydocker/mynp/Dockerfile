FROM ubuntu:18.04
MAINTAINER doogie
LABEL "purpose"="mypractice"
# remark
# 아래 내용은 빠른 apt upgrade를 위해 registry를 바꾼다.
RUN ["/bin/sed", "-i -e",  "s?archive.ubuntu.com?ftp.daum.net?g", "/etc/apt/sources.list"]
RUN ["/bin/sed", "-i -e",  "s?security.ubuntu.com?ftp.daum.net?g", "/etc/apt/sources.list"]
RUN apt-get update
RUN apt-get install net-tools iputils-ping iproute2 vim curl nginx php-fpm -y
WORKDIR /etc/nginx/sites-available
COPY default default.ORG
ADD default /etc/nginx/sites-available/default
WORKDIR /var/www/html
ADD mytest.html /var/www/html
ADD myinfo.php /var/www/html
ADD main.php /var/www/html
ADD css/layout.css /var/www/html/css
WORKDIR /usr/local/bin
ADD docker-entrypoint.sh /usr/local/bin
EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["/bin/sh", "docker-entrypoint.sh"]
