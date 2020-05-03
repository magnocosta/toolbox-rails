FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /opt/toolbox
RUN mkdir /app

WORKDIR /app

RUN gem install rails

ADD . /opt/toolbox

RUN chmod +x /opt/toolbox/helpers/app-cli
RUN ln -s /opt/toolbox/helpers/app-cli /usr/local/bin/app-cli
