FROM node:13-alpine

ENV DBPORT=5432
ENV DB=postgres
ENV DBUSER=postgres
ENV DBPASS=admin123
ENV DBHOST=database-1.cr7begbk8i4l.eu-west-1.rds.amazonaws.com


WORKDIR /app

COPY . /app/

RUN npm install

EXPOSE 80

CMD ["npm", "start"]