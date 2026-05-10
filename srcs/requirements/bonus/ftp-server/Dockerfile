FROM debian:12

RUN apt update -y && apt install -y vsftpd && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/vsftpd/empty

RUN useradd -m -d /var/www/html -s /bin/bash ftpuser

RUN echo "ftpuser:secretpass" | chpasswd

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

CMD ["vsftpd", "/etc/vsftpd.conf"]