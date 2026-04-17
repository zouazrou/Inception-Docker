FROM debian:12

COPY ./tools/setup.sh /tmp/setup.sh

RUN /tmp/setup.sh

# CMD ["_safe"]
CMD ["mysqld_safe"]