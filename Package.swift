import PackageDescription

let package = Package(
    name: "GLibObject",
    dependencies: [
        .Package(url: "https://github.com/rhx/SwiftGLib.git", majorVersion: 2)
    ],
    swiftLanguageVersions: [3, 4]
)
