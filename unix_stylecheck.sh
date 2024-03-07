#!/usr/bin/env bash

pushd $(git rev-parse --show-toplevel)

set -e

declare -r FILTER=-build/include_subdir,-legal/copyright,-build/include_what_you_use

grep -E -r --include=\*.{cpp,h,hpp} -L 'cmake-build-debug' ./*_hw ./*_let ./sand* | xargs python3 -m cpplint --linelength=120 --filter=$FILTER --output=vs7

popd