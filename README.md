# Raptive Ads SDK for iOS

This Swift Package Manager package distributes the Raptive Ads SDK as binary artifacts.

## Installation

Add the package URL in Xcode:

```text
https://github.com/cafemedia/raptive-ads-sdk-ios.git
```

Select version `1.0.0`.

## Usage

```swift
import RaptiveAdsSDK

RaptiveAds.shared.initialize(raptiveSiteId: "foo") { result in
    switch result {
    case .success:
        // The SDK is ready to load configured ad placements.
    case .failure(let error):
        print("RaptiveAdsSDK failed to initialize: \(error.localizedDescription)")
    }
}
```

