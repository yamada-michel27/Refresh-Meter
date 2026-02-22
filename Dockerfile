FROM ruby:4.0.1
RUN gem install rails -N -v 8.1.2
WORKDIR /app
