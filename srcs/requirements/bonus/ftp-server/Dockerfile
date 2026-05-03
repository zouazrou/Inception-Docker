FROM debian:12

RUN apt update -y && apt install -y vsftpd

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

RUN 