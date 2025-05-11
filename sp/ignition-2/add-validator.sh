#!/bin/bash

# Desired timestamp to execute the command
TARGET_TIMESTAMP=1744989746

# Command you want to run at that time
COMMAND1="aztec add-l1-validator --private-key 0x5abd35ffe0bf62bc1b9232180623fa64d1cf7b396333a739798f0209aa365fa8 --attester 0x8A5461Ce9d9Ea4Cb389E2e955c537C9AC43E76F3 --proposer-eoa 0x8A5461Ce9d9Ea4Cb389E2e955c537C9AC43E76F3 --l1-rpc-urls http://65.109.28.107:2545 --l1-chain-id 11155111 --staking-asset-handler 0xF739D03e98e23A7B65940848aBA8921fF3bAc4b2"
COMMAND2="aztec add-l1-validator --private-key 0x04f6c9157e7c88b3210db64e119381053d50c9050e56bb833109eace1e935d5f --attester 0x2cCF122E8953fD81B547cCb4f27D6dFA13907B03 --proposer-eoa 0x2cCF122E8953fD81B547cCb4f27D6dFA13907B03 --l1-rpc-urls http://65.109.28.107:2545 --l1-chain-id 11155111 --staking-asset-handler 0xF739D03e98e23A7B65940848aBA8921fF3bAc4b2"
COMMAND3="aztec add-l1-validator --private-key 0x87c46ea6a1104b092cf07e9485e5d326d73598da23ae53f12bb9470b36f637d0 --attester 0x6CaB4a16F24E8e8a5f00643d71dAC45493973ea4 --proposer-eoa 0x6CaB4a16F24E8e8a5f00643d71dAC45493973ea4 --l1-rpc-urls http://65.109.28.107:2545 --l1-chain-id 11155111 --staking-asset-handler 0xF739D03e98e23A7B65940848aBA8921fF3bAc4b2"
COMMAND4="aztec add-l1-validator --private-key 0xb572feffd6b26da490eb65b1b4bc9ddf2aff11ded6dcf80463a89fb5f49fe3b1 --attester 0xF4D3fB3F37B9117079B0906A0A3643531a087e3A --proposer-eoa 0xF4D3fB3F37B9117079B0906A0A3643531a087e3A --l1-rpc-urls http://65.109.28.107:2545 --l1-chain-id 11155111 --staking-asset-handler 0xF739D03e98e23A7B65940848aBA8921fF3bAc4b2"

echo "Waiting until timestamp: $TARGET_TIMESTAMP..."

# Loop until the current timestamp is equal or greater
while true; do
    CURRENT_TIMESTAMP=$(date +%s)
    if [ "$CURRENT_TIMESTAMP" -ge "$TARGET_TIMESTAMP" ]; then
        echo "Timestamp reached: $CURRENT_TIMESTAMP"
        eval "$COMMAND1" > val1-output.txt 2>&1
        eval "$COMMAND2" > val2-output.txt 2>&1
        eval "$COMMAND3" > val3-output.txt 2>&1
        eval "$COMMAND4" > val4-output.txt 2>&1
        break
    fi
    sleep 0.5
done
