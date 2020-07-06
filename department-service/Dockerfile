FROM node:lts-alpine3.10
WORKDIR /department-service
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD node index.js
