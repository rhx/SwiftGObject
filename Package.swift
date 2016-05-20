import PackageDescription

let package = Package(
    name: "GObject",
    dependencies: [
        //.Package(url: "https://github.com/rhx/CGLib.git", majorVersion: 1),
        .Package(url: "../CGLib", majorVersion: 1),
        //.Package(url: "https://github.com/rhx/SwiftGLib.git", majorVersion: 2)
        .Package(url: "../SwiftGLib", majorVersion: 3)
    ]
)
