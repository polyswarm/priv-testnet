FROM ethereum/client-go:v1.8.18
LABEL maintainer="PolySwarm Developers <info@polyswarm.io>"

WORKDIR /root/.ethereum
COPY . .

ENTRYPOINT ./run_geth.sh
EXPOSE 8545 8546
