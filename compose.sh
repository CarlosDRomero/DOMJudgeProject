#!/bin/bash
mycompose(){
  local compose_file=$1/docker-compose.yaml
  if ! [[ -z $1 && -f compose_file ]]; then
    shift
    docker-compose -f $compose_file $@
  else
    echo "Usage: Please, pass the name of a folder containing a "docker-compose.yaml" file"
  fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  mycompose $@
fi

deactivate(){
  unset -f compose
  unset -f deactivate
}

