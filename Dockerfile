FROM ruby:3.1.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

RUN mkdir /japan_subsidy_hub
WORKDIR /japan_subsidy_hub
ADD Gemfile /japan_subsidy_hub/Gemfile
ADD Gemfile.lock /japan_subsidy_hub/Gemfile.lock
RUN bundle install
ADD . /japan_subsidy_hub