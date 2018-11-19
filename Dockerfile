FROM ubuntu:18.04

RUN apt-get -y update && apt-get upgrade && apt install -y vsftpd ftp nano

RUN adduser --disabled-password user2

EXPOSE 20 21

ADD vsftpd.conf /etc/vsftpd.conf

CMD ["/usr/sbin/vsftpd"]
