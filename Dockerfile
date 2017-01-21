FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.0

RUN gem install jenkinsutil --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jenkinsutil"]
CMD ["--help"]
