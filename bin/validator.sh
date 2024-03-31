#!/bin/bash
# set -o errexit
# set -o nounset
# set -o pipefail
# find "../.cache/validator/ledger" -name 'snapshot-*' -size 0 -print -exec rm {} \; || true
# export RUST_LOG=error
# export RUST_BACKTRACE=full

exec solana-validator \
    --identity ../config/validator-keypair.json \
    --entrypoint entrypoint.testnet.solana.com:8001 \
    --entrypoint entrypoint2.testnet.solana.com:8001 \
    --entrypoint entrypoint3.testnet.solana.com:8001 \
    --expected-genesis-hash 4uhcVJyU9pJkvQyS88uRDiswHXSCkY3zQawwpjk2NsNY \
    --known-validator 5D1fNXzvv5NjV1ysLjirC4WY92RNsVH18vjmcszZd8on \
    --known-validator dDzy5SR3AXdYWVqbDEkVFdvSPCtS9ihF5kJkHCtXoFs \
    --known-validator eoKpUABi59aT4rR9HGS3LcMecfut9x7zJyodWWP43YQ \
    --known-validator 7XSY3MrYnK8vq693Rju17bbPkCN3Z7KvvfvJx4kdrsSY \
    --known-validator Ft5fbkqNa76vnsjYNwjDZUXoTWpP7VYm3mtsaQckQADN \
    --only-known-rpc \
    --full-rpc-api \
    --no-voting \
    --log ../.logs/solana-rpc.log \
    --rpc-port 8899 \
    --rpc-bind-address 0.0.0.0 \
    --private-rpc \
    --dynamic-port-range 8000-8014 \
    --wal-recovery-mode skip_any_corrupted_record \
    --ledger ../.cache/validator/ledger \
    --accounts ../.cache/validator/accounts \
    --init-complete-file ../.cache/validator/init-completed \
    --limit-ledger-size \

    #  --no-port-check \
    # --enable-rpc-transaction-history \
    #  --snapshot-interval-slots 500 \
    #  --enable-cpi-and-log-storage \
    # --maximum-local-snapshot-age 500 \
    # --snapshot-compression none \
    # --known-validator 9QxCLckBiJc783jnMvXZubK4wH86Eqqvashtrwvcsgkv \
    # --trusted-validator 7Np41oeYqPefeNQEHSv1UDhYrehxin3NStELsSKCT4K2 \
    # --trusted-validator GdnSyH3YtwcxFvQrVVJMm1JhTS4QVX7MFsX56uJLUfiZ \
    # --trusted-validator DE1bawNcRJB9rVm3buyMVfr8mBEoyyu73NBovf2oXJsJ \
    # --trusted-validator CakcnaRDHka2gXyfbEd2d3xsvkJkqsLw2akB3zsN1D2S \
    # --expected-genesis-hash 5eykt4UsFv8P8NJdTREpY1vzqKqZKvdpKuc147dw2N9d \
    # --entrypoint entrypoint.mainnet-beta.solana.com:8001 \
    # --entrypoint entrypoint2.mainnet-beta.solana.com:8001 \
    # --entrypoint entrypoint3.mainnet-beta.solana.com:8001 \
    # --entrypoint entrypoint4.mainnet-beta.solana.com:8001 \
    # --entrypoint entrypoint5.mainnet-beta.solana.com:8001 \