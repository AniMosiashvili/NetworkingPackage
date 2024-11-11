// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetworkingPackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NetworkingPackage",
            targets: ["NetworkingPackage"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NetworkingPackage",
            dependencies: [],
            path: "Sources",
            swiftSettings: [
                .unsafeFlags(["-parse-as-library"])
            ]
        ),

    ]
)
