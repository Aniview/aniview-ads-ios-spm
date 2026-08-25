// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "1.0.0"

let package = Package(
    name: "AniviewAdsSDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "AniviewAdsSDK",
            targets: ["AniviewAdsSDKTarget"]
        ),
    ],
    dependencies: [
        // Ada display ads SDK (Aniview)
        .package(url: "https://github.com/Aniview/ada-sdk-ios-spm.git", from: "1.4.0"),
        // AppLovin MAX SDK
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "12.0.0"),
    ],
    targets: [
        .target(
            name: "AniviewAdsSDKTarget",
            dependencies: [
                .target(name: "AniviewAdsSDK"),
                .product(name: "AdaSdk", package: "ada-sdk-ios-spm"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AniviewAdsSDK",
            url:
                "https://github.com/Aniview/aniview-ads-ios-spm/releases/download/v\(artifactVersion)/AniviewAdsSDK.zip",
            checksum: "ee8ce2afbdd75f32fd76fdc42819166ac31fb2fff277b2238eef0978373a26f8"
        )
    ]
)
