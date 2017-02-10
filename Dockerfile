FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2011.11.23

RUN gem install elastic-mapreduce --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["elastic-mapreduce"]
CMD ["--help"]
