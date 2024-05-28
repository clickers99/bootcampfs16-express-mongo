FROM node:lts-alpine

WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY . .

ENV MONGO_URI="mongodb+srv://clickers99:TR2UndbEzuKefRCN@devscaleid.qwiondc.mongodb.net/?retryWrites=true&w=majority&appName=DevscaleID"

EXPOSE 8000

CMD ["npm", "start"]