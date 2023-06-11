#!/bin/bash

set -ex

find "data/$1" \
    -type f \
    -name "*.webp" \
    -exec sh -c 'dwebp "$1" -o "${1%.webp}.jpg"' _ {} \;
