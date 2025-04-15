#!/usr/bin/env bash

# the implementation of the config-map data source that shows that you can pull data out
# of arguments, the environment and stdin
cat <<EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: my-cm-${qbec_env}
data:
  path: ${__DS_PATH__}
  name: ${__DS_NAME__}
  value1: "$1"
  value2: "$2"
  message: |
    $(cat -)
EOF
