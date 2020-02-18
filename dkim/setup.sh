#!/bin/bash

apt-get -y install opendkim opendkim-tools
opendkim-genkey -s mail -d hacking-lab.com
