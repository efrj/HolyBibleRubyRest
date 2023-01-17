FROM ubuntu:latest

# Applications
RUN apt-get update -y
RUN apt-get install -y neofetch
RUN apt-get install -y ruby

RUN gem install bundler

COPY  ./ /app
WORKDIR /app

RUN bundle install

EXPOSE 3000