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
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.2.0/RaptiveAdsSDK-1.2.0.xcframework.zip",
            checksum: "438e766a7f87296ad66237e062d7157a1d956440ede8ae1db78321c41ee86b9b"
        ),
        .binaryTarget(
            name: "PrebidMobileOMSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.2.0/OMSDK_Prebidorg-1.2.0.xcframework.zip",
            checksum: "5b97e1bf30330b1a0a46790d36304568f7a4a7f405bae98989ae8d806a491ee4"
        ),
        .binaryTarget(
            name: "ConfiantSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.2.0/ConfiantSDK-1.2.0.xcframework.zip",
            checksum: "50fc2ceef0ed8c0a9e620c99d4d787bcba80a1e7a1a4c4bbe78551df1c6ecbd9"
        )
    ]
)
