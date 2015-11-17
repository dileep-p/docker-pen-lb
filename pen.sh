#!/bin/bash

if [ -n "$UDP_PORT" ] && [ -n "$UDP_BACKENDS" ] && [ -n "$TCP_PORT" ] || [ -n "$TCP_BACKENDS" ]; then
  /usr/local/bin/pen  -r -U $UDP_PORT $UDP_BACKENDS
  /usr/local/bin/pen  -f $TCP_PORT $TCP_BACKENDS
elif [ -n "$UDP_PORT" ] && [ -n "$UDP_BACKENDS" ]; then
  /usr/local/bin/pen  -f -U $UDP_PORT $UDP_BACKENDS
elif [ -n "$TCP_PORT" ] || [ -n "$TCP_BACKENDS" ]; then
  /usr/local/bin/pen  -f $TCP_PORT $TCP_BACKENDS
fi
