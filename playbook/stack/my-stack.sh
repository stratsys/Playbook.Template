#!/bin/bash

if [[ "$1" == "pre" ]]; then
  echo stuff done before deploying the stack (creating secrets)
fi
if [[ "$1" == "post" ]]; then
  echo stuff done after deploying the stack
fi
