# Intellign Growth Examples

**Let your business tell you what it needs.**

Runnable examples for connecting websites, apps, stores, services, and custom products to Intellign Growth.

Growth is not an analytics dashboard or a click logger. Every integration feeds the same learning loop:

```text
Signal → Learning → Observation → Investigation → Recommendation → Test → Result
```

The job of these examples is to send meaningful product/business evidence so Growth can learn responsibly.

## Pick your stack

| Stack | Example | Credential |
| --- | --- | --- |
| Web | [`web/vanilla`](web/vanilla) | `ig_pk_live_...` publishable key |
| React + Vite | [`javascript/react-vite`](javascript/react-vite) | `ig_pk_live_...` publishable key |
| Flutter | [`flutter/basic_app`](flutter/basic_app) | `ig_ck_live_...` app-scoped client key |
| Kivy | [`python/kivy`](python/kivy) | `ig_ck_live_...` app-scoped client key |
| Python server | [`python/server`](python/server) | `ig_sk_live_...` server secret |
| REST | [`rest`](rest) | `ig_sk_live_...` server secret |

## What a useful integration looks like

Track the journey, not random UI noise:

```text
product_view → add_to_cart → signup → purchase
```

Use `identify()` when an anonymous person becomes known. Growth can learn before identification, then connect later behavior to the same journey.

Meaningful events give Growth evidence. Growth then decides whether there is enough evidence to observe a pattern, investigate it, recommend a reversible test, and learn from the result. A pattern is not treated as proof of causation.

## Credential safety

- **Publishable keys (`ig_pk_...`)** belong in approved browser origins.
- **Client keys (`ig_ck_...`)** are for distributed apps and must be scoped to an application/bundle/package ID.
- **Server keys (`ig_sk_...`) are secrets.** Never put one in browser JavaScript, Flutter, Kivy, a mobile binary, screenshots, logs, or a public repository.
- `.env.example` files contain placeholders only. Never commit real credentials.

## Verify the connection

1. Create/select a project in Intellign Growth.
2. Open **Connections** and choose your stack.
3. Create or copy the credential Growth asks for.
4. Run an example and perform a meaningful action.
5. Return to Growth and choose **Verify connection**.
6. Growth only shows **Connected** after a real event reaches the project.

After verification, connection health reflects actual activity:

- **Live now** — activity within the last hour.
- **Seen today** — activity within the last day.
- **Quiet** — no recent activity, but the connection has been seen.
- **Needs attention** — the connection has gone stale.

When fresh activity is arriving, Growth can show **Growth is learning**. That means evidence is accumulating; it does not mean Growth has already proven a cause or has a recommendation.

## Canonical event shape

```json
{
  "schemaVersion": 1,
  "event": "purchase",
  "anonymousId": "visitor_123",
  "userId": "customer_123",
  "properties": {
    "product": "Studio Lamp",
    "value": 79,
    "currency": "USD"
  },
  "timestamp": "2026-10-06T20:00:00Z"
}
```

The SDKs construct the transport envelope for you. Your job is to describe meaningful business behavior.

## Event naming

Prefer stable names such as `product_view`, `add_to_cart`, `signup`, `checkout_started`, and `purchase`. Keep private/sensitive content out of event properties.

## SDK versions

These examples are aligned to the current Growth connection contract.

- JavaScript SDK: `@intellign/growth` 0.2.1
- Flutter SDK: `intellign_growth` 0.2.1
- Python SDK: `intellign-growth` 0.2.0

The registries are released independently, so version numbers can differ while the event contract remains compatible.

Made in New York by Intellign LLC.
