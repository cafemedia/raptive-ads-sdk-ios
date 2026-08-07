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
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.1.0/RaptiveAdsSDK-1.1.0.xcframework.zip",
            checksum: "54b94ecf6fa9869d853e38c55b9b8073f858cfedbfbb3bfbd764c2abb2118172"
        ),
        .binaryTarget(
            name: "PrebidMobileOMSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.1.0/OMSDK_Prebidorg-1.1.0.xcframework.zip",
            checksum: "13977c2abed964f0512ae99f9db29ea149ab90e92112f47159c9f83977deb76f"
        )
    ]
)
