// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    products: [
        .library(
            name: "GoogleMapsBase",
            targets: [
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: [
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMapsM4B",
            targets: [
                "GoogleMapsM4B"
            ]
        ),
        .library(
            name: "GooglePlaces",
            targets: [
                "GooglePlaces",
                "GoogleMapsBase"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/AlexeyTernopolsky/GoogleMaps-SP/releases/download/7.3.0/GoogleMaps.xcframework.zip",
            checksum: "3a569cbfe5ce0bd7a97e4c08458db0c10cb735f4519c91126013f746c5a69fcc"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/AlexeyTernopolsky/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsBase.xcframework.zip",
            checksum: "6a0a7e9491aaab5b4061ed93364ae926dfa1ff50009b8cc0b73dd163459dab83"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/AlexeyTernopolsky/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsCore.xcframework.zip",
            checksum: "5efb16ce60db6356970b923952d25b93e0122bdaca8c99eddba3370c63362e3d"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/AlexeyTernopolsky/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsM4B.xcframework.zip",
            checksum: "b25e78b04e840f7d7ab5baecfa0c6edc97a0e81ba1219359e16367c3eb0e1b89"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/AlexeyTernopolsky/GoogleMaps-SP/releases/download/7.3.0/GooglePlaces.xcframework.zip",
            checksum: "9c4e335517ccacd7b618e0e6d42fd08bf85fdae831466bd56409bd81df3d0637"
        )
    ]
)
