FROM ruby:2.6.5

RUN apt-get update && \
    apt-get install -y --no-install-recommends sqlite3 && \
    apt-get clean

RUN gem install -v 6.0.2.1 rails
