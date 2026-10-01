FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY public/ /usr/share/nginx/html/
RUN gzip -k -9 /usr/share/nginx/html/index.html

EXPOSE 8080
