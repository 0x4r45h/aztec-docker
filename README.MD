# Aztec Prover Contest
### Init
copy .env.sample to .env file

```bash
cp .env.sample .env
```
change env variables inside .env file
### Run prover node
to run prover node

```bash
docker compose up -d aztec-prover
```

### Prover Agent

to run prover agent on the same machine as Prover Node keep the `AZTEC_PROVER_NODE_URL` empty, otherwise set the public address of Prover Node.

```bash
docker compose up -d prover-agent
```
