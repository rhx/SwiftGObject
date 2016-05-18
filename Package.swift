import PackageDescription

let package = Package(
    name: "GObject",
    dependencies: [
        .Package(url: "https://github.com/rhx/CGlib.git", majorVersion: 1)
    ]
)
