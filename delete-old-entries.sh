#!/bin/bash

DNS_IDS=$(curl -X GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?type=CNAME&per_page=100" \
     -H "X-Auth-Email: ${EMAIL}" \
     -H "Authorization: Bearer ${API_TOKEN}" \
     -H "Content-Type: application/json" | jq -r ".result[].id")

for x in $DNS_IDS; do
    curl -X DELETE "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/$x" \
         -H "X-Auth-Email: ${EMAIL}" \
         -H "Authorization: Bearer ${API_TOKEN}" \
         -H "Content-Type: application/json" | jq .
    echo ""
done
