FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y \
    neofetch \
    ruby \
    ruby-dev \
    build-essential \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

RUN gem install bundler --no-document

COPY ./ /app
WORKDIR /app

RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rackup", "-p", "3000", "-o", "0.0.0.0"]
