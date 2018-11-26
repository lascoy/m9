FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install apache2 php-cli php-common php-mbstring php-gd php-intl php-xml php-mysql php-zip php-curl php-xmlrpc -y
