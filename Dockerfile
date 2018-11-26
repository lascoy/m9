FROM debian:latest

RUN apt-get update

RUN apt-get install apache2 php5-mysql -y

