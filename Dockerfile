FROM alpine:latest

RUN \
  set -xe && \
  apk add --no-cache nginx

WORKDIR /

COPY rootfs ./

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]
