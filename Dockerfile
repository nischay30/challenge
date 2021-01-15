FROM node:15-alpine3.10

WORKDIR /app

# COPY the dependency files
COPY package.json yarn.lock ./

RUN yarn

COPY . .

CMD ["npm", "start"]
