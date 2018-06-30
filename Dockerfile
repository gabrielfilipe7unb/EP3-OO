FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /lojaEP3
WORKDIR /lojaEP3

COPY Gemfile /lojaEP3/Gemfile
COPY Gemfile.lock /lojaEP3/Gemfile.lock

COPY entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

COPY . /lojaEP3
