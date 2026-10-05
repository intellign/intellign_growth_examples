# Intellign Growth Examples

**Let your business tell you what it needs.**

Runnable examples for connecting websites, apps, stores, services, and custom products to Intellign Growth.

Growth is not a website script. The web runtime, JavaScript SDK, Flutter SDK, Python SDK, and REST API all speak the same Growth event language and feed the same learning loop.

## Pick your stack

| Stack | Example | Credential |
| --- | --- | --- |
| Web | [`web/vanilla`](web/vanilla) | `ig_pk_live_...` publishable key |
| React + Vite | [`javascript/react-vite`](javascript/react-vite) | `ig_pk_live_...` publishable key |
| Flutter | [`flutter/basic_app`](flutter/basic_app) | `ig_ck_live_...` app-scoped client key |
| Kivy | [`python/kivy`](python/kivy) | `ig_ck_live_...` app-scoped client key |
| Python server | [`python/server`](python/server) | `ig_sk_live_...` server secret |
| REST | [`rest`](rest) | `ig_sk_live_...` server secret |

## The five-minute mental model

A useful Growth integration follows the business journey instead of logging random clicks:

```text
product_view → add_to_cart → signup → purchase
```

Use `identify()` when a person becomes known. Before that, Growth can learn from an anonymous identity.

Every example in this repository is designed around the same tiny demo business so you can compare frameworks without relearning the product.

## Credential safety

- **Publishable keys (`ig_pk_...`)** belong in approved browser origins.
- **Client keys (`ig_ck_...`)** are for distributed apps and are scoped to an application/bundle/package ID.
- **Server keys (`ig_sk_...`) are secrets.** Never put one in browser JavaScript, Flutter, Kivy, a mobile binary, or a public repository.
- `.env.example` files contain placeholders only. Never commit real credentials.

## Verify the connection

1. Create/select a project in Intellign Growth.
2. Open **Connections** and choose your stack.
3. Create or copy the credential Growth asks for.
4. Run an example and perform an action.
5. Return to Growth and choose **Verify connection**.
6. Growth should only show **Connected ✓** after a real event reaches the project.

## Canonical event shape

```json
{
  "schemaVersion": 1,
  "event": "purchase",
  "anonymousId": "visitor_123",
  "properties": {
    "product": "Studio Lamp",
    "value": 79
  },
  "timestamp": "2026-10-05T20:00:00Z"
}
```

The SDKs construct the transport envelope for you. Your job is to describe meaningful business behavior.

## Event naming

Prefer stable, human-readable names such as `product_view`, `add_to_cart`, `signup`, `checkout_started`, and `purchase`. Keep sensitive/private content out of event properties.

## Status

These examples target the Growth 42.x connection contract. Registry packages may be released independently; each example README distinguishes a registry install from a local/source fallback when appropriate.

Made in New York by Intellign LLC.
