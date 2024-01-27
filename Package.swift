// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "basic",
    platforms: [
        .macOS(.v14),
    ],
    dependencies: [
        .package(url: "https://github.com/hummingbird-project/hummingbird.git", from: "2.0.0-alpha.1"),
    ],
    targets: [
        .executableTarget(
            name: "basic",
            dependencies: [
                .product(name: "Hummingbird", package: "hummingbird"),
            ]
        ),
    ]
)
