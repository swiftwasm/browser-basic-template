// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "BrowserApp",
    products: [
        .executable(name: "BrowserApp", targets: ["BrowserApp"])
    ],
    dependencies: [
        .package(name: "JavaScriptKit", url: "https://github.com/swiftwasm/JavaScriptKit", from: "0.9.0")
    ],
    targets: [
        .target(
            name: "BrowserApp",
            dependencies: [
                .product(name: "JavaScriptKit", package: "JavaScriptKit")
            ]),
        .target(name: "LibraryCode"),
        .testTarget(
            name: "BrowserAppTests",
            dependencies: ["LibraryCode"]),
    ]
)