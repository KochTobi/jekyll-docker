FROM alpine:3.11.3
MAINTAINER Tobias Koch <tobias.koch@qbic.uni-tuebingen.de>

ENV COMFORT_PACKAGES bash vim

RUN apk update && \
    apk upgrade &&  \
    apk add build-base \
        ruby-dev \
        git \
        $COMFORT_PACKAGES

# Clean up and remove APK cache
RUN rm -rf /var/cache/apk/*

RUN gem install bundler && \
    gem install jekyll
