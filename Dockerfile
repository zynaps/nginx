FROM alpine:latest

RUN \
  apk add --no-cache nginx && \
  mv /etc/nginx /etc/nginx.orig && mkdir /etc/nginx && \
  cp /etc/nginx.orig/mime.types /etc/nginx/ && \
  rm -rf /etc/nginx.orig

COPY nginx.conf /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
