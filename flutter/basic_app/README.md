# Flutter

Use the app-scoped client credential from **Growth → Connections → Flutter**. Never put a server key in a Flutter app.

```bash
flutter pub get
flutter run \
  --dart-define=GROWTH_KEY=ig_ck_live_REPLACE_ME \
  --dart-define=GROWTH_APP_ID=com.example.growthdemo
```

The `GROWTH_APP_ID` must match the application ID allowed by the client credential in Growth.

Run the four demo actions, then choose **Verify connection** in Growth. It should only report Flutter as connected after a real event arrives.

> Registry note: this example targets `intellign_growth` 0.2.x and becomes directly installable when the package is published to pub.dev.
