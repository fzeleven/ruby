FROM 100.79.1.215:20202/op_svc_servicestage/ruby:2.4-alpine-rails

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
CMD ["rails", "s"]
