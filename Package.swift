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
            path: "Sources",
            cxxSettings: [
                .unsafeFlags([
                        "-I/usr/local/opt/qt/lib/QtCore.framework/Headers",
                        "-I/usr/local/opt/qt/lib/QtGui.framework/Headers",
                        "-I/usr/local/opt/qt/lib/QtWidgets.framework/Headers",
                        "-I/usr/local/opt/qt/include"
                    ],
                    .when(platforms: [.macOS])
                )
            ],
            linkerSettings: [
                .unsafeFlags([
                        "/usr/local/opt/qt/lib/QtCore.framework/QtCore",
                        "/usr/local/opt/qt/lib/QtGui.framework/QtGui",
                        "/usr/local/opt/qt/lib/QtWidgets.framework/QtWidgets",
                    ],
                    .when(platforms: [.macOS])
                )
            ]
        )
    ]
)
