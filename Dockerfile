FROM debian:jessie
MAINTAINER Olivier Filangi "olivier.filangi@rennes.inra.fr"

# Prerequisites
#----------------------------------------------------------------------------------------
RUN apt-get update && apt-get install -y \
  git \
  build-essential \
  vim \
  npm \
  nodejs-legacy

RUN git clone https://github.com/VisualDataWeb/LD-VOWL.git

WORKDIR LD-VOWL
RUN npm install

EXPOSE 8080
ENTRYPOINT ["npm", "run-script", "start"]
