FROM php:5.6-apache
MAINTAINER vujovichigor@gmail.com

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --force-yes davfs2 wget && a2enmod rewrite && service apache2 restart
RUN echo "https://dav.box.com/dav /var/www/html davfs rw,user,noauto 0 0" > /etc/fstab

EXPOSE 80

ENTRYPOINT printf "YOURMAIL@ADDRESS.HERE\nYOURPASSWORD\ny\n" | mount /var/www/html && /usr/sbin/apache2ctl -D FOREGROUND
