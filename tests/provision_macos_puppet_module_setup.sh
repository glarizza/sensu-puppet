#!/usr/bin/env bash

# use local sensu module
puppet resource file /etc/puppetlabs/code/environments/production/modules/sensu ensure=link target=/vagrant

# setup module dependencies
puppet module install puppetlabs/stdlib --version 4.16.0
puppet module install lwf-remote_file --version 1.1.3
