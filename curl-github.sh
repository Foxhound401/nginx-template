#!/bin/bash

PWD=$(pwd)
URL=ttps://raw.githubusercontent.com/Foxhound401/nginx-template/master/nginx-proxy-pass.conf
FILENAME=trenghe.conf

# curl -o "$PWD/#1.conf" "$URL" "{nginx-proxy-pass}.conf"

template=$(curl -Ls "$URL")

echo $template | grep "proxy_pass" && \
  echo $template | tee here || \
  printf 'wrong'

