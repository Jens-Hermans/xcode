// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "xcodeproj",
    dependencies: [
        .package(url: "https://github.com/kylef/PathKit.git", .exact("0.8.0")),
        .package(url: "https://github.com/JohnSundell/Unbox", .exact("2.5.0")),
        .package(url: "https://github.com/tadija/AEXML.git", .exact("4.1.0")),
        .package(url: "https://github.com/Bouke/CCommonCrypto", .exact("1.0.0"))
    ],
    targets: [
        .target(
            name: "xcodeproj",
            dependencies: ["Unbox",
                          "PathKit",
                          "AEXML"],
            path: "Sources/xcodeproj"),
        .testTarget(
            name: "xcodeprojTests",
            dependencies: ["xcodeproj"],
            path: "Tests/xcodeprojTests")
    ],
    swiftLanguageVersions: [3]
)
