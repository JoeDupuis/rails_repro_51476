FROM ubuntu:23.10
RUN apt-get update
RUN apt-get -y install git ruby ruby-dev libyaml-dev make gcc bundler
RUN gem update bundler
ADD repro.rb .
ADD Gemfile .
RUN bundle install
CMD bundle exec ruby repro.rb
