FROM quay.io/evl.ms/fullstaq-ruby:2.6.5-jemalloc-stretch-slim

# "man" dirs creation prevents fail when install postgresql-client
# Try to remove them when decide to upgrade an image
RUN apt-get update -qq \
    && mkdir -p /usr/share/man/man1 \
    && mkdir -p /usr/share/man/man7 \
    && apt-get install \
    -y --no-install-recommends git build-essential libpq-dev postgresql-client zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

ENV WEB_ROOT /web
RUN mkdir $WEB_ROOT
WORKDIR $WEB_ROOT
