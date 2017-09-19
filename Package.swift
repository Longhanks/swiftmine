// swift-tools-version:4.0

import PackageDescription


let package = Package(
    name: "swiftmine",
    products: [
        .executable(name: "swiftmine", targets: ["swiftmine"])
    ],
    dependencies: [
        .package(url: "https://github.com/Longhanks/qlift", .branch("master"))
    ],
    targets: [
        .target(
            name: "swiftmine",
            dependencies: ["Qlift"],
            path: "./Sources"
        )
    ]
)

