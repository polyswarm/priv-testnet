#!/bin/sh

set -e -x

cp genesis_$CHAIN_NAME.json genesis.json

nid=$(geth --nodiscover --maxpeers 0 -exec "admin.nodeInfo.protocols.eth.config.chainId" console 2> /dev/null)

if [ $nid -ne $NETWORK_ID ]; then
    echo "Network id changed to $NETWORK_ID from $nid, re-reading genesis"
    rm -Rf /root/.ethereum/geth/chaindata/*
    geth init genesis.json
fi

geth version
# hand over execution to geth
exec geth --nodiscover --maxpeers 0 --syncmode full --mine --networkid $NETWORK_ID "$@"
