FROM ubuntu:22.04
RUN apt update -y && apt install nginx -y
ADD index.html /var/www/html/
CMD nginx -g "daemon off;"
