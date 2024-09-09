// swift-tools-version:5.10.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Remote",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Remote",
            targets: ["Remote"]),
    ],
    dependencies: [
      .package(url: "https://github.com/samalone/websocket-actor-system.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Remote",
            dependencies: [
              .product(name: "WebSocketActors", package: "websocket-actor-system"),
            ]
        ),
        
        .testTarget(
            name: "RemoteTests",
            dependencies: ["Remote",
                           .product(name: "WebSocketActors", package: "websocket-actor-system"),
                          ]
        ),
    ]
)
