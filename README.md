# Ansible Role: GitBook

[![Build Status](https://travis-ci.org/chusiang/gitbook.ansible.role.svg?branch=master)](https://travis-ci.org/chusiang/gitbook.ansible.role) [![Ansible Galaxy](https://img.shields.io/badge/role-gitbook-blue.svg)](https://galaxy.ansible.com/chusiang/gitbook/) [![Docker Hub](https://img.shields.io/badge/docker-gitbook-blue.svg)](https://hub.docker.com/r/chusiang/gitbook/) [![](https://images.microbadger.com/badges/image/chusiang/gitbook.svg)](https://microbadger.com/images/chusiang/gitbook "Get your own image badge on microbadger.com")

An Ansible role of Install gitbook for `Ubuntu`, `Apline` and `macOS`.

Current Version:

* node: 6.10.3
* npm: 3.10.10
* gitbook-cli: 2.3.2
* gitbook: 3.2.3

## Requirements

None.

## Role Variables

```
node_reversion: '6.10.3'

# If we want to use the specific version, we need setting the
# 'gitbook_switch_specific_version' variable to 'true'.
gitbook_switch_specific_version: 'false'
gitbook_specific_version: 2.6.7

# Alpine Linux.
gitbook_necessary_apk_packages:
  - bash
  - build-base
  - curl
  - gcc
  - git
  - nodejs
  - nodejs-npm
  - rsync

# Debian / Ubuntu.
gitbook_necessary_apt_packages:
  - bash-completion
  - build-essential
  - curl
  - git
  - nodejs
  - nodejs-legacy
  - npm
  - rsync
  - wget
  - xdg-utils
  - xz-utils

gitbook_npm_packages:
  - gitbook-cli
  - svgexport

gitbook_plugins:
  - disqus
  - ga
  - github
  - page-toc-button
```

## Dependencies

None.

## Example Playbook

    - hosts: all
      roles:
        - { role: chusiang.gitbook }

## Docker Container

This repository contains Dockerized [Ansible](https://github.com/ansible/ansible), published to the public [Docker Hub](https://hub.docker.com/) via **automated build** mechanism.

> Docker Hub: [chusiang/gitbook](https://hub.docker.com/r/chusiang/gitbook/)

### Images

* `chusiang/gitbook:2.6` ([Dockerfile](https://github.com/chusiang/gitbook.ansible.role/blob/master/builds/gitbook-2.6/Dockerfile))
* `chusiang/gitbook:3.2`, `lastest` ([Dockerfile](https://github.com/chusiang/gitbook.ansible.role/blob/master/builds/gitbook-3.2/Dockerfile))
* `chusiang/gitbook:ubuntu-14.04` ([Dockerfile](https://github.com/chusiang/gitbook.ansible.role/blob/master/builds/ubuntu-14.04/Dockerfile))

### Usage

    $ docker run -it -v /src/gitbook:/tmp/gitbook chusiang/gitbook:ubuntu14.04 bash
    root@5438276a451d:/tmp# cd gitbook && gitbook build .
    info: 9 plugins are installed
    info: 6 explicitly listed
    info: loading plugin "highlight"... OK
    info: loading plugin "search"... OK
    info: loading plugin "lunr"... OK
    info: loading plugin "sharing"... OK
    info: loading plugin "fontsettings"... OK
    info: loading plugin "theme-default"... OK
    info: found 41 pages
    info: found 57 asset files
    info: >> generation finished with success in 8.5s !

## License

Copyright (c) chusiang from 2016-2018 under the MIT license.
