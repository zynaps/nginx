FROM alpine:latest
LABEL maintainer="Igor Vinokurov <zynaps@zynaps.ru>"

RUN \
  set -xe && \
  apk add --no-cache nginx

WORKDIR /

COPY rootfs ./

VOLUME ["/etc/nginx"]

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]
