FROM ubuntu/nginx:1.18-22.04_beta

RUN echo "export DEMO_KEY=${NASA_API_KEY}" >> ~/.bashrc

COPY . /app/

RUN envsubst "${DEMO_KEY}"  < /app/app/config_IN.js >> /app/app/config.js && cp -R /app/* /var/www/html

EXPOSE 80