FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.61

RUN gem install jenkinsutil --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jenkinsutil"]
CMD ["--help"]
