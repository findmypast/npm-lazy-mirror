FROM node

RUN npm install -g npm-lazy-mirror

RUN mkdir /npm-data
VOLUME /npm-data

EXPOSE 2000
ENTRYPOINT ["npm-lazy-mirror", "-b", "0.0.0.0"]
