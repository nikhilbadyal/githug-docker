FROM ruby:alpine
RUN gem install githug:0.5.0
SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
RUN echo y | githug
WORKDIR /git_hug
VOLUME /git_hug
