FROM ruby:3.1

RUN mkdir /RailsHome
WORKDIR /RailsHome
COPY Gemfile* ./
RUN bundle install
COPY . /RailsHome

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
