FROM node:12-alpine

#install git
RUN apk add --no-cache git

#clone the repository
RUN git clone -q  https://github.com/Kaou23/todo-app.git

#set the working directory to the app directory
WORKDIR /todo-app

#install the dependencies
RUN yarn install --production

CMD ["node", "/src/index.js"]