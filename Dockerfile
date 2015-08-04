FROM ruby:2.1.4

MAINTAINER sourceperl <loic.celine@free.fr>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y build-essential libpq-dev git

WORKDIR /opt/

# thingspeak SETUP
RUN git clone https://github.com/iobridge/thingspeak.git
WORKDIR /opt/thingspeak
RUN bundle install

# DB setup
ADD database.yml config/database.yml

EXPOSE 3000
