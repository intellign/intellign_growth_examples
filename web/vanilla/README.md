# Vanilla Web

The smallest Growth connection: one script, no framework.

1. In Growth, open **Connections → Web**.
2. Copy your origin-scoped `ig_pk_live_...` key.
3. Replace `ig_pk_live_REPLACE_ME` in `index.html`.
4. Serve this folder over HTTP (for example `python -m http.server 5173`).
5. Add that local/production origin to the Growth project's approved origins when testing.
6. Interact with the page, then use **Verify connection** in Growth.

This example intentionally does not invent a `window.growth.track()` API. The web runtime owns automatic observation; use the JavaScript SDK when you need explicit custom events.
