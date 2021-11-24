FROM ruby:3.0.2

RUN gem install bundler -v 2.2.22

RUN mkdir /app
WORKDIR /app
COPY . ./

RUN bundle install


ENTRYPOINT ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]