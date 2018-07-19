FROM ruby:alpine
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

RUN set -xe \
    \
# Install build-deps for gems
    && apk --no-cache add gcc g++ make \
    \
# Install gems
    && gem install github-pages \
    && gem install coderay \
    && gem install rake \
    && gem install yajl-ruby \
    \
# Remove packages
    && apk del gcc g++ make

# Run
WORKDIR /tmp/jekyll
EXPOSE 4000
CMD ["jekyll", "serve", "--host", "0.0.0.0"]