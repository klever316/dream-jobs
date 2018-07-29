FROM ruby:2.5.1-slim

# updating and upgrading linux
RUN apt-get update && apt-get upgrade -y

# instaling curl
RUN apt-get install -y curl gnupg

# adding repositories for yarn and webpack
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# installing dependencies
RUN apt update && apt install -y --no-install-recommends \
    build-essential nodejs yarn libpq-dev imagemagick

# setting installation path
ENV INSTALL_PATH /app

# creating installation path
RUN mkdir -p $INSTALL_PATH

# setting the work directory
WORKDIR $INSTALL_PATH

# copying Gemfile to the container
COPY Gemfile ./

# setting gems path
ENV BUNDLE_PATH /gems

# copying all files to the container
COPY . .