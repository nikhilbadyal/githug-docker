FROM ruby:3.1.4-alpine
RUN gem install githug:0.5.0 && apk add git
SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
RUN echo y | githug
WORKDIR /git_hug
VOLUME /git_hug
