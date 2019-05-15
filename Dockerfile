FROM 100.125.33.202:20202/op_svc_cse/ruby:2.4-alpine-rails

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
CMD ["rails", "s"]
