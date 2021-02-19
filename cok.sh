#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0xeda9774264112a15245cf5eda7f9c1b2fe6bf63e
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lyra

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
