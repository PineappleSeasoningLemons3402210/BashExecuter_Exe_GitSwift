// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "BashExecutor",
    platforms: [
        .macOS(.v13),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "BashExecutor",
            targets: ["BashExecutor"]
        ),
    ],
    targets: [
        .target(
            name: "BashExecutor",
            path: "Sources/BashExecutor"
        )
    ]
)
