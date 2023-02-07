FROM ruby:alpine

WORKDIR /app

RUN apk update && apk add --no-cache build-base

COPY . .

RUN bundle install

ENTRYPOINT ["rackup", "--host", "0.0.0.0", "-p", "3000"]