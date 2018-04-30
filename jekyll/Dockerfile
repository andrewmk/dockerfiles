FROM ubuntu:18.04
LABEL maintainer "Alex Haydock <alex@alexhaydock.co.uk>"

# Install Ruby, Bundler
RUN apt-get update
RUN apt-get -y install ruby bundler

# Install various stuff that I've found some themes 
# have needed in the past, like Git and cURL
RUN apt-get -y install curl git

# Environment
WORKDIR /tmp

# Use apt to install any components which fail to install using
# the Bundler command we're about to use below. (It might be
# good to periodically review these, and see whether the version
# available via Bundler is still broken.)
RUN apt-get -y install ruby-nokogiri

# Install GitHub Pages
ADD Gemfile /tmp/Gemfile
RUN bundle install
RUN rm -v /tmp/Gemfile && rm -v /tmp/Gemfile.lock

# Run
ENTRYPOINT ["/bin/bash"]
