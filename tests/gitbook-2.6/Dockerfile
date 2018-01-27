# Dockerfile for building image that contains software stack provisioned by Ansible.

FROM williamyeh/ansible:alpine3-onbuild

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

RUN echo "==> Updating package cache ..."  && \
      apk update 

ENV PLAYBOOK setup.yml -e "gitbook_switch_specific_version=true"

RUN echo "==> Setuping with Ansible ..."  && \
      ansible-playbook-wrapper -vvv

RUN echo "==> Removing package list ..."  && \
      rm -rf /var/cache/apk/*
