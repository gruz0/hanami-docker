FROM ruby:2.5-alpine
MAINTAINER Alexander Kadyrov <gruz0.mail@gmail.com>

RUN apk add --no-cache build-base postgresql postgresql-dev libpq

WORKDIR /app
COPY . /app
RUN bundle install -j $(nproc) --quiet

EXPOSE 2300
ENTRYPOINT ["bundle", "exec"]
