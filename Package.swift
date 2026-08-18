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
            checksum: "0aeafb4a647b0703b489bb2f1fcf9d51e70d8ae0f29b29188d76e83121af6674"
        ),
        .binaryTarget(
            name: "PrebidMobileOMSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.2.0/OMSDK_Prebidorg-1.2.0.xcframework.zip",
            checksum: "c1942d5f6c3ef600ef762f89cc26689c4e93ae51744c71a92a4f5056c1f32139"
        ),
        .binaryTarget(
            name: "ConfiantSDK",
            url: "https://raptive-maa-packages-development.s3.us-east-1.amazonaws.com/ios/releases/1.2.0/ConfiantSDK-1.2.0.xcframework.zip",
            checksum: "918357b5454a9021d79c80a842a4c3bac67cb91c92d0ab45dcb0b5bfc39296ac"
        )
    ]
)
