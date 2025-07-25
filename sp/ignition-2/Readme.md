# since 1.1.2
only val1 is required , it will run 10 validators under one process
the archiver is also our full node for the telegram bot
# my own path
use uploader.sh to upload .env and docker compsoe file, then run each compose file





# Below is the official guide, but i'm using my own compose
install aztec up on server https://github.com/AztecProtocol/aztec-packages/tree/000d51596819ad18935094fed87a50406ac7e678/aztec-up
```bash
bash -i <(curl -s https://install.aztec.network)
```

then run 

```bash
aztec-up 0.84.0-alpha-testnet.3
export DATA_DIRECTORY=/home/arash/nodes/aztec/ignition/ignition-val1/data
export COINBASE=0x8A5461Ce9d9Ea4Cb389E2e955c537C9AC43E76F3
export BLOB_SINK_URL=http://34.82.117.158:5052
export LOG_LEVEL=debug
export L1_CONSENSUS_HOST_URL=http://65.109.28.107:2052
export ETHEREUM_HOSTS=http://65.109.28.107:2545
export VALIDATOR_PRIVATE_KEY=0x5abd35ffe0bf62bc1b9232180623fa64d1cf7b396333a739798f0209aa365fa8
export P2P_ANNOUNCE_ADDR=65.108.9.23
export P2P_ANNOUNCE_PORT=21400
AZTEC_PORT=21401
aztec start --network alpha-testnet --l1-rpc-urls $ETHEREUM_HOSTS --l1-consensus-host-urls $L1_CONSENSUS_HOST_URL --sequencer.validatorPrivateKey $VALIDATOR_PRIVATE_KEY --p2p.p2pIp $P2P_ANNOUNCE_ADDR --p2p.p2pPort $P2P_ANNOUNCE_PORT --archiver --node --sequencer
```