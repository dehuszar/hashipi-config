#!/usr/bin/env bash

ansible $1 -b -a "rm /etc/envs/.env-consul-tls*"
ansible $1 -b -m copy -a "src=envs/.env-consul-no-tls dest=/etc/envs/"
