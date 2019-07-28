FROM parity/parity:v2.5.5-stable
LABEL maintainer="PolySwarm Developers <info@polyswarm.io>"

WORKDIR .
COPY . .

RUN mkdir -p keys/DevelopmentChain
RUN cp keystore/UTC* keys/DevelopmentChain

ENTRYPOINT ./run_parity.sh
EXPOSE 8545 8546
