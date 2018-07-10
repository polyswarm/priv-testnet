FROM ethereum/client-go
LABEL maintainer="PolySwarm Developers <info@polyswarm.io>"

WORKDIR /root/.ethereum
COPY . .
RUN geth init genesis.json

CMD ["--nodiscover", "--maxpeers", "0", "--syncmode", "full", "--networkid", "1337", "--targetgaslimit", "94000000", "--rpc", "--rpcaddr", "0.0.0.0", "--rpcapi", "eth,web3,personal,net", "--ws", "--wsaddr", "0.0.0.0", "--wsapi", "eth,web3,personal,net", "--wsorigins", "*", "--unlock", "4b1867c484871926109e3c47668d5c0938ca3527,d87e4662653042c5da11711542c11f2c8433612d,4f10166cafd7856ea946124927d4478fdd18d979,f0243d9b2e332d7072dd4b143a881b3f135f380c,f870491ea0f53f67846eecb57855284d8270284d,34e583cf9c1789c3141538eec77d9f0b8f7e89f2,2b813f079e7e3cf24eeb1ac5853bd6f9118a04ea,1215242c8f0eff0a4ac06ea3d73caa78279fb9bb,05328f171b8c1463eafdacca478d9ee6a1d923f8,085ba02c35555fecb8147820135fdfec10eed85a", "--password", "password.txt", "--mine"]
EXPOSE 8545 8546
