// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "MyCLI",
    products: [
        .executable(name: "MyCLI", targets: ["MyCLI"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/example-package-figlet.git", branch: "main"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "MyCLI",
            dependencies: [
                .product(name: "Figlet", package: "example-package-figlet"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
        .testTarget(
            name: "MyCLITests",
            dependencies: ["MyCLI"]),
    ]
)
