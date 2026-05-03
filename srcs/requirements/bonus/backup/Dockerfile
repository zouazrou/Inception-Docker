FROM debian:12

RUN apt-get update && apt-get install -y mariadb-client cron

COPY tools/backup.sh /usr/local/bin/backup.sh

RUN chmod +x /usr/local/bin/backup.sh

RUN echo "*/1 * * * * root /usr/local/bin/backup.sh" >> /etc/crontab

RUN mkdir -p /backups

ENTRYPOINT ["cron", "-f"]