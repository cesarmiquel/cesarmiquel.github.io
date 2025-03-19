FROM ruby:3.4-alpine

RUN apk add --no-cache build-base tzdata openssl openssl-dev nodejs

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0"]
