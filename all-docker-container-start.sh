#!/bin/bash

cat << EOS | xargs -L1 -P 3 -I{} sh -c '{}'
sh start-container/api-container-start.sh
sh start-container/front-container-start.sh
sh start-container/scraping-container-start.sh
EOS
