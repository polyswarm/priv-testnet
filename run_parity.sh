#!/bin/sh

set -e -x

cp genesis_parity_$CHAIN_NAME.json genesis.json
parity --version
# hand over execution to parity
exec parity --config dev \
  --chain genesis.json \
  --network-id $NETWORK_ID \
  --keys-path keys \
  --no-discovery \
  --max-peers 0 \
  --min-peers 0 \
  --mode active \
  --gas-cap 94000000 \
  --ui-interface all \
  --jsonrpc-interface all \
  --jsonrpc-cors all \
  --jsonrpc-apis all \
  --jsonrpc-hosts all \
  --ws-interface all \
  --ws-apis all \
  --ws-origins all \
  --ws-hosts all \
  --unsafe-expose \
  --author 0x34e583cf9c1789c3141538eec77d9f0b8f7e89f2 \
  --password password.txt \
  --unlock 0x05328f171b8c1463eafdacca478d9ee6a1d923f8,0x085ba02c35555fecb8147820135fdfec10eed85a,0x1215242c8f0eff0a4ac06ea3d73caa78279fb9bb,0x2b813f079e7e3cf24eeb1ac5853bd6f9118a04ea,0x34e583cf9c1789c3141538eec77d9f0b8f7e89f2,0x4b1867c484871926109e3c47668d5c0938ca3527,0x4f10166cafd7856ea946124927d4478fdd18d979,0xd87e4662653042c5da11711542c11f2c8433612d,0xf0243d9b2e332d7072dd4b143a881b3f135f380c,0xf870491ea0f53f67846eecb57855284d8270284d
