# Flutter

Use the app-scoped client credential from **Growth → Connections → Flutter**. Never put a server key in a Flutter app.

```bash
flutter pub get
flutter run \
  --dart-define=GROWTH_KEY=ig_ck_live_REPLACE_ME \
  --dart-define=GROWTH_APP_ID=com.example.growthdemo
```

The `GROWTH_APP_ID` must match the application ID allowed by the client credential in Growth.

Run the demo journey:

```text
product_view → add_to_cart → signup → purchase
```

The demo identifies the user at signup. Before that, Growth uses the anonymous app identity.

Then return to **Growth → Connections → Flutter → Verify connection**. It should only report the connection as active after a real event arrives.

Once connected, Growth tracks signal recency as **Live now**, **Seen today**, **Quiet**, or **Needs attention**. Fresh evidence can enter the **Growth is learning** state while Growth waits for enough support to make a responsible observation or recommendation.

This example targets `intellign_growth` 0.2.1.
