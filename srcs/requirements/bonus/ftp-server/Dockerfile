FROM debian:12

ARG FTP_USER
ARG FTP_PASS

RUN apt update -y && apt install -y vsftpd && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/vsftpd/empty

RUN useradd -m -d /var/www/html -s /bin/bash $FTP_USER

RUN echo "$FTP_USER:$FTP_PASS" | chpasswd

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

CMD ["vsftpd", "/etc/vsftpd.conf"]