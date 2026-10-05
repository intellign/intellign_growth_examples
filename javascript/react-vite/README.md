# React + Vite

A small explicit-event example using `@intellign/growth`.

```bash
cp .env.example .env
npm install
npm run dev
```

Put the publishable key from **Growth → Connections → JavaScript** in `.env`, and make sure the running origin is approved for that Growth project.

The demo sends `product_view → add_to_cart → signup → purchase` and calls `identify()` when the demo customer signs up.

> Registry note: this example targets `@intellign/growth` 0.2.x. If that version has not yet been published during the release process, use the SDK source from the Growth repository until registry publication is complete.
