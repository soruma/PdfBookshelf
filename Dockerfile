FROM ruby:2.3
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y nodejs mysql-client --no-install-recommends && \
    apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev && \
    apt-get install -y imagemagick ImageMagick-common && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

COPY . /usr/src/app

EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]
