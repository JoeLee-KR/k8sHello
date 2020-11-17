FROM ubuntu:18.04
MAINTAINER doogie
LABEL "purpose"="mypractice"
# remark
# 아래 내용은 빠른 apt upgrade를 위해 registry를 바꾼다.
RUN ["/bin/sed", "-i -e",  "s?archive.ubuntu.com?ftp.daum.net?g", "/etc/apt/sources.list"]
RUN ["/bin/sed", "-i -e",  "s?security.ubuntu.com?ftp.daum.net?g", "/etc/apt/sources.list"]
RUN apt-get update
RUN apt-get install dnsutils net-tools iputils-ping iproute2 vim curl nginx php-fpm -y
CMD ["/usr/bin/tail", "-f", "/dev/null"]
