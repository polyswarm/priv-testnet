#!/bin/sh

set -e -x

cp genesis_parity_$CHAIN_NAME.json genesis.json
cp parity.toml config.toml
parity --version
# hand over execution to parity
exec parity --config config.toml \
  --network-id $NETWORK_ID \
  --unsafe-expose \
