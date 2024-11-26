# From project description "The project might not work with too new Node.js versions"
# package-lock.json created with npm < 7, which has a different format to current lockfile format
FROM node:14-alpine
WORKDIR /usr/src/app

RUN npm i -g serve

COPY package.json package-lock.json ./
RUN npm i

COPY . .
ARG REACT_APP_BACKEND_URL=http://localhost:8080 # Default for exercises before 2.8
ENV REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL}
RUN npm run build

RUN adduser --system appuser
USER appuser

EXPOSE 5000
CMD ["serve", "-s", "-l", "5000", "build"]
