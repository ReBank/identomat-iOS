// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "identomat",
    defaultLocalization: "ka",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "identomat",
            targets: ["identomat"]
        )
    ],
    dependencies: [
        .package(url: "https://example.com/WebRTC-lib.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "identomat",
            url: "https://gitlab.com/identomat-public/identomat-ios-framework-public.git",
            checksum: "add-checksum-here"
        )
    ],
    swiftLanguageVersions: [.v5]
)