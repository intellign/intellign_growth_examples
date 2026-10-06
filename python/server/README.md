# Python Server

Server-side Python uses an `ig_sk_live_...` secret created in **Growth → Connections**.

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
export GROWTH_SERVER_KEY=ig_sk_live_REPLACE_ME
python app.py
```

Keep the server key in your deployment's secret/environment manager. Never expose it in HTML, Flutter, Kivy, a mobile binary, logs, screenshots, or Git.

This example records a trusted server-side `purchase` outcome after identifying the customer. Server outcomes are especially useful because they give Growth authoritative downstream evidence to compare with upstream intent signals from web/mobile clients.

After the event arrives, verify the connection in Growth. Fresh server activity contributes to the same learning loop as client events.

This example targets `intellign-growth` 0.2.0.
