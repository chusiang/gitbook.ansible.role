# Dockerfile for building image that contains software stack provisioned by Ansible.

FROM chusiang/ansible:2.9

MAINTAINER Chu-Siang Lai <chusiang@drx.tw>

RUN echo "==> Updating package cache ..."     && \
      apk update 

RUN echo "==> Initializating ..."             && \
      apk add --no-cache curl git make        && \
      git clone https://github.com/chusiang/gitbook.ansible.role.git && \
      cd gitbook.ansible.role
      
RUN echo "==> Setuping with Ansible ..."      && \
      ansible-playbook -c local setup.yml
      # ansible-playbook -c local setup.yml -vvv

RUN echo "==> Removing something ..."         && \
      cd /                                    && \
      rm -rf /var/cache/apk/*                 && \
      rm -rf /srv/gitbook.ansible.role        && \
      rm -rf /srv/calibre-installer-cache

WORKDIR /srv

CMD [ "gitbook", "--version" ]
