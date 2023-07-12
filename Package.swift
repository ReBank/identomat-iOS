// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "identomat",
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
        .package(name: "identomat-ios", url: "https://github.com/ReBank/identomat-iOS.git", from: "1.1.54"),
        .package(url: "https://example.com/WebRTC-lib.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "identomat",
            dependencies: ["identomat-ios"]
        ),
        .binaryTarget(
            name: "identomat-ios",
            url: "https://gitlab.com/identomat-public/identomat-ios-framework-public.git",
            checksum: "add-checksum-here"
        )
    ],
    swiftLanguageVersions: [.v5]
)