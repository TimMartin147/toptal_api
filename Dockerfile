FROM node:13-alpine

ENV DBPORT=3306
ENV DB=api-app
ENV DBUSER=api
ENV DBPASS=test123
ENV DBHOST=db-instance

WORKDIR /app

COPY . /app/

RUN npm install

EXPOSE 80

CMD ["npm", "start"]