#!/bin/sh

set -e -x
# beyond dumb that we can't use an ip

cp genesis_$CHAIN_NAME.json genesis.json

nid=$(geth --nodiscover --maxpeers 0 -exec "admin.nodeInfo.protocols.eth.config.chainId" console 2> /dev/null)

if [ $nid -ne $NETWORK_ID ]; then
    echo "Network id changed to $NETWORK_ID from $nid, re-reading genesis"
    rm -Rf /root/.ethereum/geth/chaindata/*
    geth init genesis.json
fi

geth --networkid $NETWORK_ID "$@"
