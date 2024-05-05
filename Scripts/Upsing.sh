#!/bin/bash

jq -r 'first | .tag_name' <<< $(curl --silent https://api.github.com/repos/SagerNet/sing-box/releases)
