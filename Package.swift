// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyBinaryFramework",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "MyBinaryFramework",
            targets: ["MyBinaryFramework"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/square/Valet.git", from: "4.1.3"),
    ],
    targets: [
        .target(
            name: "MyBinaryFramework",
            dependencies: [
                .product(name: "Valet", package: "Valet"),
            ]
        ),
    ]
)
