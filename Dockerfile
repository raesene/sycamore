FROM ruby:3.0.2

RUN apt update && apt -y install npm

RUN npm install --global yarn

RUN gem install bundler -v 2.2.22

RUN mkdir /app
WORKDIR /app
COPY . ./

RUN bundle install
RUN rails db:migrate
RUN rails webpacker:install
RUN yarn install

ENTRYPOINT ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]