FROM rails:4.2.5

RUN apt-get update && apt-get -y upgrade

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN mkdir tmp
RUN bundle install --without development test

EXPOSE 8001
CMD ["bash","start.sh"]
