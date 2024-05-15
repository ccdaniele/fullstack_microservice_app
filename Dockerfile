FROM ruby:3.2.2
WORKDIR /pd-user-api
COPY . . 
ENV BUNDLE_PATH /gems
RUN bundle install
RUN chmod +x /pd-user-api/start.sh
# ENTRYPOINT [ "bin/rails" ]
CMD ["/pd-user-api/start.sh"]
EXPOSE 3000
