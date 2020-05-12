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
#settiing app wokring directory
WORKDIR /todo-app                                        
