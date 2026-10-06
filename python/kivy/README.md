# Kivy

Kivy is a distributed client, so use an **app-scoped client key (`ig_ck_...`)**, never a server secret.

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
export GROWTH_KEY=ig_ck_live_REPLACE_ME
export GROWTH_APP_ID=com.example.growthkivy
python main.py
```

The application ID must match the one attached to the Growth client credential.

The demo sends `product_view → add_to_cart → signup → purchase` and identifies the demo customer at signup. Return to Growth after a real event arrives and verify the connection.

Connection health is based on real signal recency, and fresh activity can place the project in **Growth is learning** while enough evidence accumulates for observations and recommendations.

This example targets `intellign-growth` 0.2.0.
