#Base image
FROM node:stretch-slim

#adding git package
RUN apt-get update
RUN apt-get install git -y

#cloning todo repo
RUN git clone https://github.com/dobromir-hristov/todo-app.git

# setting app environment up
RUN cd todo-app \
        && yarn install -y
        
RUN apt-get install libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y #e2e tests 
RUN yarn add cypress --dev

#settiing app wokring directory
WORKDIR /todo-app