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
            url: "https://github.com/amzn/swift-package-manager-amazon-aps.git",
            exact: "5.6.6"
        )
    ],
    targets: [
        .target(
            name: "RaptiveAdsSDKTarget",
            dependencies: [
                .target(name: "RaptiveAdsSDK"),
                .target(name: "PrebidMobileOMSDK"),
                .target(name: "ConfiantSDK"),
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps")
            ],
            path: "Sources/RaptiveAdsSDKTarget"
        ),
        .binaryTarget(
            name: "RaptiveAdsSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.3.0/RaptiveAdsSDK-1.3.0.xcframework.zip",
            checksum: "e164658ffd94149daaebd3c498878251f95d669a49078a63647a678eaa4e0e41"
        ),
        .binaryTarget(
            name: "PrebidMobileOMSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.3.0/OMSDK_Prebidorg-1.3.0.xcframework.zip",
            checksum: "deea612bd3ede00804f34261accf7351c3224ff87368a814b13081498063e8df"
        ),
        .binaryTarget(
            name: "ConfiantSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/vendor/confiant/6.2.0/ConfiantSDK-6.2.0.xcframework.zip",
            checksum: "a9f6ed3d2d90e511586f0b30be4c26ae5645db327755da5b6128f4c14d38778d"
        )
    ]
)
