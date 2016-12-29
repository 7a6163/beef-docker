FROM ruby:2.3-alpine
MAINTAINER Zac <mymengyu@gmail.com>

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

RUN apk add --no-cache bash build-base curl git nodejs sqlite-dev
RUN gem install bundler

WORKDIR /opt
RUN git clone git://github.com/beefproject/beef.git
WORKDIR /opt/beef
RUN bundler install
EXPOSE 3000

CMD ["./beef"]
