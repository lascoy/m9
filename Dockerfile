FROM ubuntu:18.04

RUN apt-get -y update && apt-get upgrade && apt install -y vsftpd ftp mariadb-server
