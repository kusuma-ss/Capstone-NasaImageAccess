FROM ubuntu/nginx:1.18-22.04_beta

COPY app /app

RUN cp -R /app/* /var/www/html

EXPOSE 3000