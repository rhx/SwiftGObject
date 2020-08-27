// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "GLibObject",
    products: [
        .library(name: "GLibObject", targets: ["GLibObject"]),
    ],
    dependencies: [
        .package(url: "ssh://promac.local/Users/rh/src/swift/rh/gtk/SwiftGLib", .branch("master"))
        //.package(url: "https://github.com/rhx/SwiftGLib.git", .branch("master"))
    ],
    targets: [
        .target(name: "GLibObject", dependencies: ["GObjectCHelpers", "GLib"]),
        .target(name: "GObjectCHelpers", dependencies: ["GLib"]),
        .testTarget(name: "GLibObjectTests", dependencies: ["GLibObject"]),
    ]
)
