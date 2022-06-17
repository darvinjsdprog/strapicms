FROM node:16
# Installing libvips-dev for sharp Compatability
RUN apt-get update && apt-get install libvips-dev -y
#setting development environment
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
#creating foler opt inside container where node_modules will live
WORKDIR /opt/
#copy package.json and yarn.lock to work directory
COPY ./package.json ./yarn.lock ./
#telling docker where to look for node_modules
ENV PATH /opt/node_modules/.bin:$PATH
#set time out and running yarn install
RUN yarn config set network-timeout 600000 -g && yarn install
#Change directory to opt folder
WORKDIR /opt/app
#copy project to this folder
COPY ./ .
#run yarn build
RUN yarn build
#expose the port 1337
EXPOSE 1337
#run yarn develop
CMD ["yarn", "develop"]
