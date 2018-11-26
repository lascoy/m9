FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade 

RUN apt-get install apache2 php5 libapache2-mod-php5 mysql-server-5.5 wget unzip -y

RUN echo "mysql-server-5.5 mysql-server/root_password password root"

RUN echo "mysql-server-5.5 mysql-server/root_password password root"

RUN /etc/init.d/mysql start && mysql -uroot -proot -e "create database PRESTASHOP" && mysql -uroot -proot -e "grant all on prestashop.* TO '-uroot'@'localhost'; flush privileges"

RUN cd /tmp; wget https://download.prestashop.com/download/releases/prestashop_1.7.2.1.zip

RUN cd /var/www/html rm index.html unzip /tmp/prestashop_1.7.2.1; mv prestashop/* .; rm -rf prestashop

RUN chown www-data: /var/www/html

RUN chmod -R 755 /var/www/html



