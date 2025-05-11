#!/bin/bash

scp val1/.env stone-sp-1:/home/arash/nodes/aztec/ignition-2/val1/.env
scp val2/.env stone-sp-1:/home/arash/nodes/aztec/ignition-2/val2/.env
scp val3/.env stone-sp-1:/home/arash/nodes/aztec/ignition-2/val3/.env
scp val4/.env stone-sp-1:/home/arash/nodes/aztec/ignition-2/val4/.env



scp ./docker-compose.yml stone-sp-1:/home/arash/nodes/aztec/ignition-2/val1/docker-compose.yml
scp ./docker-compose.yml stone-sp-1:/home/arash/nodes/aztec/ignition-2/val2/docker-compose.yml
scp ./docker-compose.yml stone-sp-1:/home/arash/nodes/aztec/ignition-2/val3/docker-compose.yml
scp ./docker-compose.yml stone-sp-1:/home/arash/nodes/aztec/ignition-2/val4/docker-compose.yml

# Start each validator
ssh stone-sp-1 "cd /home/arash/nodes/aztec/ignition-2/val1 && docker compose up -d"
ssh stone-sp-1 "cd /home/arash/nodes/aztec/ignition-2/val2 && docker compose up -d"
ssh stone-sp-1 "cd /home/arash/nodes/aztec/ignition-2/val3 && docker compose up -d"
ssh stone-sp-1 "cd /home/arash/nodes/aztec/ignition-2/val4 && docker compose up -d"
