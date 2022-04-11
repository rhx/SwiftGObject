// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "GLibObject",
    products: [ .library(name: "GLibObject", targets: ["GLibObject"]), ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git", branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGLib.git", branch: "development")
    ],
    targets: [
        .target(
            name: "GLibObject",
            dependencies: [
                "GObjectCHelpers",
                .product(name: "gir2swift", package: "gir2swift"),
                .product(name: "GLib",      package: "SwiftGLib"),
            ],
            swiftSettings: [
                .unsafeFlags(["-suppress-warnings"], .when(configuration: .release)),
                .unsafeFlags(["-suppress-warnings", "-Xfrontend", "-serialize-debugging-options"], .when(configuration: .debug)),
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .target(
            name: "GObjectCHelpers",
            dependencies: [
                .product(name: "GLib", package: "SwiftGLib"),
            ],
            cSettings: [
                .unsafeFlags(["-w"])
            ]
        ),
        .testTarget(
            name: "GLibObjectTests",
            dependencies: ["GLibObject"],
            swiftSettings: [.unsafeFlags(["-suppress-warnings"])]
        ),
    ]
)
