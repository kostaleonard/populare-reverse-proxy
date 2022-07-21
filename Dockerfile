FROM nginx:stable-alpine
COPY config/default.conf /etc/nginx/conf.d
COPY config/health /usr/share/nginx/html
EXPOSE 80/tcp
EXPOSE 443/tcp
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]
WORKDIR /usr/share/nginx/html