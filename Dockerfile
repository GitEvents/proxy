FROM gliderlabs/alpine
MAINTAINER Patrick Heneise <patrick@blended.io>

RUN apk add --update nginx

# and copy to the build context
ADD nginx.crt /etc/ssl/
ADD nginx.key /etc/ssl/
ADD nginx-proxy.conf /etc/nginx/nginx.conf

WORKDIR /etc/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
