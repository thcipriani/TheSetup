#!/usr/bin/env bash

path=$(cd $(dirname "$0") && pwd)

sudo puppet apply --modulepath="${path}/puppet/modules" --hiera_config="${path}/puppet/hiera.yaml" "${path}/puppet/manifests/site.pp"