FROM ruby:3.1-alpine

WORKDIR /app

RUN apk update && apk add --no-cache build-base

COPY . .

RUN bundle install