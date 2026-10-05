# REST API

Anything that can make an HTTP request can connect to Growth.

Create a **server key** in Growth, keep it in an environment variable, then:

```bash
export GROWTH_SERVER_KEY=ig_sk_live_REPLACE_ME
sh send-event.sh
```

Return to **Growth → Connections → REST API → Verify connection**. Growth should only show Connected after the event is actually ingested.

The REST example uses a server credential and therefore must run from trusted infrastructure or a local terminal—not client-side browser/mobile code.
