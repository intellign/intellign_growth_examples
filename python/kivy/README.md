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

> Registry note: this example targets `intellign-growth` 0.2.x. During registry release, install from the Growth SDK source until PyPI publication is complete.
