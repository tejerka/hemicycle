FROM node:12-alpine

COPY . /srv/app

RUN cd /srv/app/backend && \
    npm install --production

RUN cd /srv/app/frontend && \
    npm run build

EXPOSE 80
EXPOSE 3000

WORKDIR /srv/app/backend

CMD ["node",  "app.js"]
