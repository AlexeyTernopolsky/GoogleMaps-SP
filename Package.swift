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
            checksum: "70f1bf3575f3b033ae27a060d1e6f10ec228cc81472da22aacac64a9d92af080"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/AlexeyTernopolsky/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsBase.xcframework.zip",
            checksum: "aa6afce0cfbfa09500376c6bb44dabe822c3308a2efd11c52311612d913f41e2"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/AlexeyTernopolsky/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsCore.xcframework.zip",
            checksum: "9e1e8d373602f702e5846ea8bfba4a5c4fd594668ae494ae661d42be56a6aa29"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/AlexeyTernopolsky/GoogleMaps-SP/releases/download/7.3.0/GooglePlaces.xcframework.zip",
            checksum: "8cf0431e9b84b4e74b96177a1a4d256c453766c4090e902582aab11404ffc982"
        )
    ]
)
