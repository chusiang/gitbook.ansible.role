# Dockerfile for building image that contains software stack provisioned by Ansible.
#
# USAGE:
#   $ docker build -t gitbook:alpine3 .
#
# Version  1.1
#


# pull base image
FROM williamyeh/ansible:alpine3-onbuild

MAINTAINER Chu-Siang Lai <chusiang.lai@gmail.com>


#
# build phase
#

# init.
RUN sudo apk add -y curl git make ;\
      git clone https://github.com/chusiang/gitbook.ansible.role.git ;\
      cd gitbook.ansible.role ;\
      make init
      
ENV PLAYBOOK gitbook.ansible.role/setup.yml
RUN ansible-playbook-wrapper -vvv

