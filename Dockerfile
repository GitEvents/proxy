FROM gliderlabs/alpine
MAINTAINER Patrick Heneise <patrick@blended.io>

RUN apk add --update nginx

# and copy to the build context
ADD nginx.crt /etc/ssl/nginx/
ADD nginx.key /etc/ssl/nginx/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
