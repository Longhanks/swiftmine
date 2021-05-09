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
            url: "https://github.com/DimaRU/qlift",
            .branch("qt5")
        )
    ],
    targets: [
        .target(
            name: "swiftmine",
            dependencies: [
                "Qlift"
            ],
            path: "Sources",
            linkerSettings: [
                .linkedFramework("QtWidgets", .when(platforms: [.macOS])),
                .linkedFramework("QtCore", .when(platforms: [.macOS])),
                .linkedFramework("QtGui", .when(platforms: [.macOS]))
            ]
        )
    ]
)
