// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "RaptiveAdsSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "RaptiveAdsSDK",
            targets: ["RaptiveAdsSDKTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            .upToNextMinor(from: "13.3.0")
        )
    ],
    targets: [
        .target(
            name: "RaptiveAdsSDKTarget",
            dependencies: [
                .target(name: "RaptiveAdsSDK"),
                .target(name: "PrebidMobileOMSDK"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/RaptiveAdsSDKTarget"
        ),
        .binaryTarget(
            name: "RaptiveAdsSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.0.0/RaptiveAdsSDK-1.0.0.xcframework.zip",
            checksum: "85ab1c286965432d8ba96eaf73b5c160aff65b619903a1a5571b8bbd4727ac81"
        ),
        .binaryTarget(
            name: "PrebidMobileOMSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.0.0/OMSDK_Prebidorg-1.0.0.xcframework.zip",
            checksum: "f8ecd211787d9e9aa5285665da6a25b01aad0ef8fc0fdd83b123cc5d3f5a931d"
        )
    ]
)
