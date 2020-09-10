FROM alpine:latest
LABEL maintainer="siva@fylehq.com"

ENV SQUID_CACHE_DIR=/var/spool/squid \
    SQUID_LOG_DIR=/var/log/squid \
    SQUID_USER=squid \
    SQUID_CACHE_DIR=/var/cache/squid

RUN apk update \
 && apk add bash squid 

#COPY squid-ca-cert-key.pem /etc/squid/squid-ca-cert-key.pem
COPY squid.conf /etc/squid/squid.conf


COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 3128/tcp
ENTRYPOINT ["/sbin/entrypoint.sh"]
