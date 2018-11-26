FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install tzdata apache2 libapache2-mod-php -y
