FROM ubuntu:18.04

RUN apt-get update 

RUN apt-get install apache2 php5 libapache2-mod-php5 mysql-server-5.5 wget unzip 
