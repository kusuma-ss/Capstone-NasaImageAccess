FROM node:10

WORKDIR /app


RUN npm install

COPY . /app/

EXPOSE 3000
CMD [ "node", "app.js" ]