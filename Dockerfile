FROM node:18.13.0
ENV NODE_ENV=production
WORKDIR /app/
COPY /project/ .
RUN npm install
EXPOSE 3000
