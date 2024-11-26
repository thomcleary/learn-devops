# From project description "The project might not work with too new Node.js versions"
# package-lock.json created with npm < 7, which has a different format to current lockfile format
FROM node:14-alpine AS build-stage
WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm i

COPY . .
ARG REACT_APP_BACKEND_URL=http://localhost:8080 # Default for exercises before 2.8
ENV REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL}

RUN npm run build

# Run build
FROM node:14-alpine
WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

RUN npm i -g serve

RUN adduser --system appuser
USER appuser

EXPOSE 5000
CMD ["serve", "-s", "-l", "5000", "build"]
