// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "RaptiveAdsSDK",
    platforms: [
        .iOS(.v15)
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
                .target(name: "ConfiantSDK"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "Sources/RaptiveAdsSDKTarget"
        ),
        .binaryTarget(
            name: "RaptiveAdsSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.2.1/RaptiveAdsSDK-1.2.1.xcframework.zip",
            checksum: "e9f7152a9e3e40cb09df53d94081fedf570ecde30fde3229730e96e12f609bca"
        ),
        .binaryTarget(
            name: "PrebidMobileOMSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.2.1/OMSDK_Prebidorg-1.2.1.xcframework.zip",
            checksum: "57a880b36949c633018bc1389f29498c4817a55f49be8bbb7f186dbbb3e8b84f"
        ),
        .binaryTarget(
            name: "ConfiantSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.2.1/ConfiantSDK-1.2.1.xcframework.zip",
            checksum: "a06234c8fe6ea3995bc69283c4227157cefcd5c3511f2a487b087fc1a4a8e9a1"
        )
    ]
)
