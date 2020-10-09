#!/bin/bash
ip_hex=$(echo -n $2 | od -A n -t x1)
ip_hex_clean="$(echo -e "${ip_hex}" | tr -d '[:space:]')"
sudo ping  $1 -p "${ip_hex_clean}"
