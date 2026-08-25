# AniviewAdsSDK

AppLovin MAX custom adapter for Aniview display ads, backed by the Ada SDK.

## Installation

### Swift Package Manager

Add this package to your Xcode project:

```
https://github.com/Aniview/aniview-ads-sdk-ios-spm.git
```

This will also pull in its dependencies:
- [AdaSdk](https://github.com/Aniview/ada-sdk-ios-spm) — Aniview display ads SDK
- [AppLovinSDK](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) — AppLovin MAX mediation

## AppLovin MAX Dashboard Setup

1. Add a **Custom SDK Network** in your MAX dashboard
2. Set the **iOS Adapter Class** to `AniviewMediationAdapter`
3. Configure **Custom Parameters** (app-level):
   ```json
   {
     "store_url": "https://apps.apple.com/app/id123456"
   }
   ```
4. Configure **Custom Parameters** (ad-unit-level):
   ```json
   {
     "publisher_id": "YOUR_PUBLISHER_ID",
     "tag_id": "YOUR_TAG_ID",
     "environment": "tg1"
   }
   ```

## Supported Ad Formats

| AppLovin Format | Description |
|---|---|
| Banner (320×50) | Standard banner |
| MREC (300×250) | Medium rectangle |
| Leader (728×90) | Leaderboard |

## Requirements

- iOS 14.0+
- Swift 5.10+
- Xcode 15+
