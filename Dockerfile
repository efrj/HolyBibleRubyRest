FROM ruby:alpine3.4

ENV   \
      DEV_PACKAGES="zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev curl-dev ruby-dev build-base linux-headers curl" \
      EXEC_PACKAGES="git"

RUN apk add --no-cache --update --upgrade $DEV_PACKAGES $MARIADB_DEV_PACKAGES $EXEC_PACKAGES
RUN apk add --upgrade sqlite-dev
RUN apk add --upgrade sqlite

COPY  ./ /app
WORKDIR /app

RUN   bundle install

ENV   \
      APP_SERVER="thin" \
      APP_PORT="3000" \
      APP_HOST="0.0.0.0"

RUN   \
      find / -type f -iname \*.apk-new -delete && \
      rm -rf /var/cache/apk/* && \
      rm -rf /usr/lib/lib/ruby/gems/*/cache/* && \
      rm -rf ~/.gem


EXPOSE 3000

#CMD bundle exec rackup /app/config.ru -s${APP_SERVER} -p${APP_PORT} -o${APP_HOST}
CMD ruby app.rb -p 3000