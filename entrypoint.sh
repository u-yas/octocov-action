#!/bin/sh -l

set -e

if [ -n "$INPUT_CONFIG" ]; then
    octocov --config "$INPUT_CONFIG"
else
    if [ -n "$INPUT_COMMAND"]; then
        octocov "$INPUT_COMMAND"
    else
        octocov
    fi
fi
