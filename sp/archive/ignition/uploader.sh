#!/bin/bash

scp val1/.env stone-sp-1:/home/arash/nodes/aztec/ignition/ignition-val1/.env
scp val2/.env stone-sp-1:/home/arash/nodes/aztec/ignition/ignition-val2/.env
scp val3/.env stone-sp-1:/home/arash/nodes/aztec/ignition/ignition-val3/.env
scp val4/.env stone-sp-1:/home/arash/nodes/aztec/ignition/ignition-val4/.env



scp ./docker-compose.yml stone-sp-1:/home/arash/nodes/aztec/ignition/ignition-val1/docker-compose.yml
scp ./docker-compose.yml stone-sp-1:/home/arash/nodes/aztec/ignition/ignition-val2/docker-compose.yml
scp ./docker-compose.yml stone-sp-1:/home/arash/nodes/aztec/ignition/ignition-val3/docker-compose.yml
scp ./docker-compose.yml stone-sp-1:/home/arash/nodes/aztec/ignition/ignition-val4/docker-compose.yml