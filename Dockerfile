FROM ubuntu/nginx

RUN echo "export DEMO_KEY=${NASA_API_KEY}" >> ~/.bashrc

COPY . /app

RUN envsubst ${DEMO_KEY}  < /app/config.js >> /app/config.js

RUN cat /app/config.js

RUN cp -R /app/* /var/www/html

EXPOSE 80