# with sqlite db

FROM ruby:3.2.2
WORKDIR /pd-users-api
COPY . . 
ENV BUNDLE_PATH /gems
RUN bundle install
RUN bin/rails db:migrate
RUN bin/rails db:seed
ENTRYPOINT [ "bin/rails" ]
CMD ["s", "-b", "0.0.0.0"]
EXPOSE 3000
