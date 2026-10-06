# React + Vite

A small explicit-event example using `@intellign/growth`.

```bash
cp .env.example .env
npm install
npm run dev
```

Put the publishable key from **Growth → Connections → JavaScript** in `.env`, and make sure the running origin is approved for that Growth project.

The demo sends:

```text
product_view → add_to_cart → signup → purchase
```

It calls `identify()` at signup so Growth can connect anonymous behavior to the known customer journey.

After the first real event reaches Growth, return to **Connections** and verify the integration. A successful connection can then move through health states such as **Live now**, **Seen today**, **Quiet**, and **Needs attention** based on actual signal recency.

Fresh activity may show **Growth is learning**. That means Growth is accumulating evidence before it decides whether there is enough support for an observation or recommendation.

This example targets `@intellign/growth` 0.2.1.
