// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "swiftmine",
    platforms: [.macOS(.v11)],
    dependencies: [
        .package(url: "https://github.com/DimaRU/qlift", branch: "master")
    ],
    targets: [
         .executableTarget(name: "swiftmine",
                dependencies: [
                    .product(name: "Qlift", package: "qlift")
                ],
                path: "Sources",
                resources: [
                    .process("Resources/resource.rcc"),
                ]
        )
    ]
)
