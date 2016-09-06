FROM ruby
COPY . /workspace
WORKDIR /workspace
RUN bundle install

