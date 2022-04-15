FROM node:10-alpine

RUN mkdir -p /app/ && chown -R node:node /app

WORKDIR /app

COPY ["package*.json", "./"]

USER node

RUN npm install

EXPOSE 8080

COPY --chown=node:node . .

CMD [ "node", "app.js"]
