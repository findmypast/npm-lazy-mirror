FROM node

RUN npm install -g npm-lazy-mirror

RUN mkdir /tmp/npm-lazy
VOLUME /tmp/npm-lazy

EXPOSE 2000
ENTRYPOINT ["npm-lazy-mirror", "-b", "0.0.0.0"]
