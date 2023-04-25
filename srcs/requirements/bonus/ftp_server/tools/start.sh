#!/bin/bash

useradd ${FTP_USER} && echo ${FTP_USER}:${FTP_PASS} | chpasswd
chown -R ${FTP_USER}:${FTP_USER} /var/wordpress
usermod -d /var/wordpress ${FTP_USER}
mkdir var/ftp

/usr/sbin/vsftpd /etc/vsftpd.conf
