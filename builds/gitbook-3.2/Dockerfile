# Dockerfile for building image that contains software stack provisioned by Ansible.

FROM williamyeh/ansible:alpine3-onbuild

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

RUN echo "==> Updating package cache ..."     && \
      apk update 

RUN echo "==> Initializating ..."             && \
      apk add --no-cache curl git make        && \
      git clone https://github.com/chusiang/gitbook.ansible.role.git && \
      cd gitbook.ansible.role                 && \
      make init
      
ENV PLAYBOOK gitbook.ansible.role/setup.yml

RUN echo "==> Setuping with Ansible ..."      && \
      ansible-playbook-wrapper -vvv

RUN echo "==> Removing something ..."         && \
      cd /                                    && \
      rm -rf /var/cache/apk/*                 && \
      rm -rf /tmp/gitbook.ansible.role        && \
      rm -rf /tmp/calibre-installer-cache

