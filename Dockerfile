# FROM ruby:2.6.6-alpine3.10

# RUN brew update && brew install -y npm && npm install -g yarn

# RUN mkdir -p /var/app
# COPY . /var/app
# WORKDIR /var/app

# RUN bundle install

# CMD rails s -b 0.0.0.0

# /path/to/app/Dockerfile
FROM ruby:2.6.6-alpine3.10

# Set local timezone
RUN apk add --update tzdata && \
    cp /usr/share/zoneinfo/Europe/London /etc/localtime && \
    echo "Europe/London" > /etc/timezone

# Install your app's runtime dependencies in the container
RUN apk add --update --virtual runtime-deps postgresql-client nodejs libffi-dev readline sqlite

# Bundle into the temp directory
WORKDIR /tmp
ADD Gemfile* ./

RUN apk add --virtual build-deps build-base openssl-dev postgresql-dev libc-dev linux-headers libxml2-dev libxslt-dev readline-dev && \
    bundle install --jobs=2 && \
    apk del build-deps

# Copy the app's code into the container
ENV APP_HOME /app
COPY . $APP_HOME
WORKDIR $APP_HOME

# Configure production environment variables
ENV RAILS_ENV=production \
    RACK_ENV=production

# Expose port 3000 from the container
EXPOSE 3000

# Run puma server by default
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]