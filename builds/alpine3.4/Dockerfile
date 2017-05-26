# Dockerfile for building image that contains software stack provisioned by Ansible.
#
# USAGE:
#   $ docker build -t gitbook:alpine3 .

# pull base image
FROM williamyeh/ansible:alpine3-onbuild

MAINTAINER Chu-Siang Lai <chusiang.lai@gmail.com>

RUN echo "===> Updating package cache ..."  && \
      apk update 

RUN echo "===> Initializating ..."  && \
      apk add --no-cache curl git make && \
      git clone https://github.com/chusiang/gitbook.ansible.role.git && \
      cd gitbook.ansible.role && \
      make init
      
ENV PLAYBOOK gitbook.ansible.role/setup.yml

RUN echo "===> Setuping with Ansible ..."  && \
      ansible-playbook-wrapper -vvv

RUN echo "===> Removing package list ..."  && \
      rm -rf /var/cache/apk/*

