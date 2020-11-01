// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "JapanNFCReaderL10nJSONChecker",
    platforms: [.macOS(.v10_10)],
    dependencies: [],
    targets: [
        .target(
            name: "Checker",
            dependencies: []),
    ]
)
