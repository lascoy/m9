FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y tzdata

RUN apt-get install apache2 libapache2-mod-php php-cli php-common php-mbstring php-gd php-intl php-xml php-mysql php-zip php-curl php-xmlrpc -y

RUN rm -rf /etc/apache2/sites-avaible/000-default.conf

ADD ./000-default.conf /etc/apache2/sites-avaible/

RUN /etc/init.d/apache2 restart

RUN apt-get install wget -y

RUN wget https://download.prestashop.com/download/releases/prestashop_1.7.2.1.zip

RUN apt-get install unzip -y

RUN unzip prestashop_1.7.2.1.zip 
