FROM ruby:3.1.2
RUN apt-get update -qq && \
    apt-get install -y nodejs yarn postgresql-client
WORKDIR /app
RUN gem install bundler:2.3.6
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails db:prepare && bundle exec rails s -b 0.0.0.0"]
