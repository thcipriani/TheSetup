#!/usr/bin/env bash

path=$(cd $(dirname "$0") && pwd)

sudo puppet apply --modulepath="${path}/puppet/modules" "${path}/puppet/manifests/default.pp"