FROM ubuntu:impish

RUN apt update

RUN apt install nginx -y
RUN apt install libnginx-mod-rtmp -y

COPY nginx.conf /etc/nginx/nginx.conf
COPY players /usr/share/nginx/html/players
COPY static /usr/share/nginx/html/static

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

COPY start.sh /start.sh

EXPOSE 1935
EXPOSE 8080


CMD ["/bin/bash", "/start.sh"]