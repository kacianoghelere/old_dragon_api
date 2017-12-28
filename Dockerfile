FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /old-dragon-manager-api
WORKDIR /old-dragon-manager-api

COPY Gemfile /old-dragon-manager-api/Gemfile
COPY Gemfile.lock /old-dragon-manager-api/Gemfile.lock

RUN bundle install

COPY . /old-dragon-manager-api