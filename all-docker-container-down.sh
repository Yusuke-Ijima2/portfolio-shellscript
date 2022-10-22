#!/bin/bash

cat << EOS | xargs -L1 -P 3 -I{} sh -c '{}'
sh down-container/api-container-down.sh
sh down-container/front-container-down.sh
sh down-container/scraping-container-down.sh
EOS
