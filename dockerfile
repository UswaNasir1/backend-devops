FROM node:18.17.0-bullseye-slim
WORKDIR /usr/app
COPY . .
RUN apt-get update -y && apt-get install -y git
RUN npm install -g npm@latest && npm i vue-loader webpack && npm i && npm i webpack  && npm run build
CMD ["node", "dist/main"]
EXPOSE 3001