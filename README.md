# Ansible Role: GitBook

[![Build Status](https://travis-ci.org/chusiang/gitbook.ansible.role.svg?branch=master)](https://travis-ci.org/chusiang/gitbook.ansible.role) [![Ansible Galaxy](https://img.shields.io/badge/role-gitbook-blue.svg)](https://galaxy.ansible.com/chusiang/gitbook/) [![Docker Hub](https://img.shields.io/badge/docker-gitbook-blue.svg)](https://hub.docker.com/r/chusiang/gitbook/) [![](https://images.microbadger.com/badges/image/chusiang/gitbook.svg)](https://microbadger.com/images/chusiang/gitbook "Get your own image badge on microbadger.com")

An Ansible role of Install gitbook in everyway.

Current Version:

* node: 5.12.0
* npm: 3.8.6
* gitbook-cli: 2.3.0
* gitbook: 3.1.1

## Requirements

None.

## Role Variables

None.

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

* chusiang/gitbook:ubuntu14.04 (lastest)

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

Copyright (c) chusiang from 2016 under the MIT license.

