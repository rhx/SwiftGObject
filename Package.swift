// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "GLibObject",
    products: [ .library(name: "GLibObject", targets: ["GLibObject"]), ],
    dependencies: [
        .package(name: "GLib", url: "https://github.com/rhx/SwiftGLib.git", .branch("master"))
    ],
    targets: [
        .target(name: "GLibObject", dependencies: ["GObjectCHelpers", "GLib"]),
        .target(name: "GObjectCHelpers", dependencies: ["GLib"]),
        .testTarget(name: "GLibObjectTests", dependencies: ["GLibObject"]),
    ]
)
