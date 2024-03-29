FROM ruby:3.1
# npmのインストール
RUN apt-get update && apt-get install -y nodejs postgresql-client npm
# yarnのインストール
RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y nodejs yarn postgresql-client

WORKDIR /RailsHome
COPY Gemfile* ./
RUN apt-get install imagemagick
RUN yarn add bootstrap @popperjs/core jquery
RUN bundle install
COPY . /RailsHome

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
