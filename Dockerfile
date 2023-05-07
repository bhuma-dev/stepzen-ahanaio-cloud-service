FROM node:16

ARG STEPZEN_ADMIN_KEY

ENV STEPZEN_ADMIN_KEY="${STEPZEN_ADMIN_KEY}"

WORKDIR /usr/src/app

RUN npm install -g stepzen@0.29.0

COPY . .

EXPOSE 5000
EXPOSE 5001

CMD ["npm", "run", "start"]
