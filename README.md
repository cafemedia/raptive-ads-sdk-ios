# Raptive Ads SDK for iOS

This Swift Package Manager package distributes the Raptive Ads SDK as binary artifacts.

## Installation

Add the package URL in Xcode:

```text
https://github.com/cafemedia/raptive-ads-sdk-ios.git
```

Select version `1.2.1`.

## Usage

```swift
import RaptiveAdsSDK

RaptiveAds.shared.initialize(raptiveSiteId: "your-site-id") { result in
    // Continue application flow, due to the initialization result
}
```
