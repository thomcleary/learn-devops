# From project description "The project might not work with too new Node.js versions"
# package-lock.json created with npm < 7, which has a different format to current lockfile format
FROM node:14
WORKDIR /usr/src/app

RUN npm i -g serve

COPY package.json package-lock.json ./
RUN npm i

COPY . .
RUN npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
