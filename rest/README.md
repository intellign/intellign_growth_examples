# REST API

Anything that can make an HTTP request can connect to Growth.

Create a **server key** in Growth, keep it in an environment variable, then:

```bash
export GROWTH_SERVER_KEY=ig_sk_live_REPLACE_ME
sh send-event.sh
```

Return to **Growth → Connections → REST API → Verify connection**. Growth only shows Connected after the event is actually ingested.

The REST example uses a server credential and therefore must run from trusted infrastructure or a local terminal—not client-side browser/mobile code.

The example sends a completed `purchase` outcome. In a real integration, pair trusted outcomes like purchases, bookings, or completed signups with upstream intent events so Growth can learn where people continue or drop off.

Connection health is based on actual signal recency, and fresh evidence contributes to the same observation → investigation → recommendation → test loop used by every Growth SDK.
