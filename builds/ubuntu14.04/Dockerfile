# Dockerfile for building image that contains software stack provisioned by Ansible.
#
# USAGE:
#   $ docker build -t gitbook:ubuntu14.04 .

FROM williamyeh/ansible:ubuntu14.04-onbuild

MAINTAINER Chu-Siang Lai <chusiang.lai@gmail.com>

# fix policy-rc.d for Docker
# @see http://www.monblocnotes.com/node/2057
# @see http://askubuntu.com/a/365912
RUN sed -i -e 's/exit\s\s*101/exit 0/' /usr/sbin/policy-rc.d

RUN echo "==> Updating package cache ..."  && \
      apt-get update

RUN echo "==> Initializating ..."  && \
      apt-get install -y curl git make && \
      git clone https://github.com/chusiang/gitbook.ansible.role.git && \
      cd gitbook.ansible.role && \
      make init

ENV PLAYBOOK gitbook.ansible.role/setup.yml

RUN echo "==> Setuping with Ansible ..."  && \
      ansible-playbook-wrapper -vvv

RUN echo "==> Removing package list ..."  && \
      apt-get clean all

