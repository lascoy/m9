FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y tzdata

RUN apt-get install apache2 libapache2-mod-php php-cli php-common php-mbstring php-gd php-intl php-xml php-mysql php-zip php-curl php-xmlrpc -y

ADD /etc/apache2/sites-avaible/000-default.conf /etc/apache2/sites-avaible/000-default.conf

RUN systemctl restart apache2
