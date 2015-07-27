FROM httpd:2.4
MAINTAINER Dang Mai <contact@dangmai.net>

RUN apt-get update && apt-get install -y nodejs npm git
RUN npm install -g bower

WORKDIR /usr/local/apache2/htdocs
ADD [".", "/usr/local/apache2/htdocs/"]

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN bower install --allow-root
