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

This example records a completed purchase from trusted server infrastructure.
