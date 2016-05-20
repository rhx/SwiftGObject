import PackageDescription

let package = Package(
    name: "GObject",
    dependencies: [
        .Package(url: "https://github.com/rhx/SwiftGLib.git", majorVersion: 2)
    ]
)
