FROM alpine:3.7
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Environment
WORKDIR /tmp/jekyll

# Install Ruby and the build packages we need
# (the ruby-dev package provides Ruby headers that will be used by some of the Gems pulled in by Bundler).
# (zlib and zlib-dev are also required by some of the Gems, particularly Nokogiri)
# (ruby-json prevents Jekyll from throwing a parsing error at build time)
RUN apk update && \
    apk add gcc g++ make ruby ruby-bundler ruby-dev ruby-json zlib zlib-dev

# Install GitHub Pages
ADD Gemfile /tmp/Gemfile
RUN bundle install && \
    rm -v /tmp/Gemfile /tmp/Gemfile.lock

# Run
ENTRYPOINT ["/usr/bin/jekyll"]

# If no arguments are provided by the user, run a server on 0.0.0.0
CMD ["serve","-H","0.0.0.0"]
