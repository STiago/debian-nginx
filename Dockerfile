FROM webdevops/base:debian-8 

MAINTAINER Maria Victoria Santiago Alcala <victoriasantiagoalcala@gmail.com>

ENV PYTHONUNBUFFERED 1

RUN apt-get -y update


ENV WEB_DOCUMENT_ROOT /application/code/ 
ENV WEB_DOCUMENT_INDEX index.php 
ENV WEB_ALIAS_DOMAIN *.vm 

# Install nginx 
RUN /usr/local/bin/apt-install \
        nginx

RUN useradd -m docker && echo "docker:docker" 

USER docker
CMD /bin/bash
