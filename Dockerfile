FROM alpine:latest

RUN \
  set -xe && \
  apk add --no-cache nginx

WORKDIR /

COPY rootfs ./

RUN \
  ln -sf /dev/stdout /var/log/nginx/access.log && \
  ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]
