// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Peertalk",
    products: [
        .library(
            name: "Peertalk",
            targets: ["Peertalk"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Peertalk",
            dependencies: [],
            path: "peertalk",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "PeertalkTests",
            dependencies: ["Peertalk"],
            path: "peertalk-tests",
            exclude: ["Info.plist"]
        )
    ]
)
