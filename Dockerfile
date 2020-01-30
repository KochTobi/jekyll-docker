FROM jekyll/jekyll:3.8.5

ENV JEKYLL_DEFAULT default_jekyll
ARG jekyll_directory=$JEKYLL_DEFAULT

USER jekyll

# copy default jekyll site to the docker image
COPY --chown=jekyll:jekyll $jekyll_directory /home/jekyll/site

# install gem packages
WORKDIR /home/jekyll/site
RUN bundle install 

# copy server starting script
COPY start-server /bin/

CMD start-server
