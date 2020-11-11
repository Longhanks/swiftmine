// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "swiftmine",
    products: [
        .executable(
            name: "swiftmine",
            targets: [
                "swiftmine"
            ]
        )
    ],
    dependencies: [
        .package(
            name: "Qlift",
            url: "https://github.com/Longhanks/qlift",
            .branch("master")
        )
    ],
    targets: [
        .target(
            name: "swiftmine",
            dependencies: [
                "Qlift"
            ],
            path: "Sources"
        )
    ]
)
