FROM node:8.11.4
EXPOSE 8080
COPY server.js .
CMD node server.js
