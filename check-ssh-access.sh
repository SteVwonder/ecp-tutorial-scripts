#!/bin/bash

for x in $(seq 1 29); do
    ssh -i ${AWK_KEY_PATH} -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "ubuntu@ecp-${x}.herbein.dev" hostname;
done
