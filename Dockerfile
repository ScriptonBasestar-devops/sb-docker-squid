FROM ubuntu:focal

RUN apt update && apt upgrade -y
RUN apt install squid

EXPOSE 3128

VOLUME /etc/squid/conf.d
VOLUME /var/spool/squid

CMD ["squid"]
