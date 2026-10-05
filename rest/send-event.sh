#!/usr/bin/env sh
set -eu

: "${GROWTH_SERVER_KEY:?Set GROWTH_SERVER_KEY to an ig_sk_live_ server credential}"

curl --fail-with-body \
  -X POST 'https://growth.intellign.us/api/events' \
  -H 'Content-Type: application/json' \
  -H "X-Intellign-Key: ${GROWTH_SERVER_KEY}" \
  -H 'X-Growth-Sdk: rest' \
  --data '{
    "schemaVersion": 1,
    "event": "purchase",
    "anonymousId": "rest_demo_visitor",
    "properties": {
      "product": "Studio Lamp",
      "value": 79,
      "currency": "USD"
    }
  }'
