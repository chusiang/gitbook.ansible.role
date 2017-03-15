# Dockerfile for building image that contains software stack provisioned by Ansible.
#
# USAGE:
#   $ docker build -t gitbook .
#
# Version  1.1
#


# pull base image
FROM williamyeh/ansible:alpine3-onbuild

MAINTAINER Chu-Siang Lai <chusiang.lai@gmail.com>


#
# build phase
#

ENV PLAYBOOK setup.yml
RUN ansible-playbook-wrapper -vvv

