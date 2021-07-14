FROM ruby:3.0.0

RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

WORKDIR /Rails-Docker
COPY . /Rails-Docker
RUN bundle install

EXPOSE 3000

CMD ["bash"]