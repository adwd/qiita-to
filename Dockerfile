FROM alpine:latest as builder

RUN apk add --no-cache nodejs

COPY assets/ assets/
COPY components/ components/
COPY layouts/ layouts/
COPY middleware/ middleware/
COPY pages/ pages/
COPY plugins/ plugins/
COPY static/ static/
COPY store/ store/
COPY nuxt.config.js .
COPY package-lock.json .
COPY package.json .

RUN npm i
RUN npm run build

ENV HOST 0.0.0.0
EXPOSE 3000
CMD npm run start
