FROM ruby:4.0.3
RUN gem install rails -N -v 8.1.3
WORKDIR /app

COPY entrypoint.sh/ /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
