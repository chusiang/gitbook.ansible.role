# Dockerfile for building image that contains software stack provisioned by Ansible.

FROM chusiang/ansible:2.9

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

RUN echo "==> Updating package cache ..."  && \
      apk update

COPY  .  /srv

RUN echo "==> Setuping with Ansible ..."  && \
      ansible-playbook -c local setup.yml

RUN echo "==> Removing package list ..."  && \
      rm -rf /var/cache/apk/*

WORKDIR /srv

CMD [ "gitbook", "--version" ]
