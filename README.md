# Google Maps Swift Package
This module provides Google Maps/Places SDKs via Swift Package Manager. It provides already prepared binaries of different SDK versions and also contains some code to build these binaries.   

### Before 7.3.0 version 
Until version 7.3.0 legacy fat frameworks from Google were used to combine it in XCFrameworks and use theirs via Swift Package Manager. But these versions lacked support for simulators with ARM64 architecture (on Macs with Apple Silicon CPU). Also Carthage dependency manager was used to download Google SDKs to build the binaries.
### 7.3.0 version and later   
You cannot use Carthage to download 7.3.0 Google SDKs and above. So now CocoaPods dependency manager is used to download Google SDKs for the building. 

Also I used ideas from [these changes](https://github.com/darrarski/GoogleMaps-SP) to provide experimental support for the ARM64 simulator.

While Google provides XCFrameworks with ARM64 simulator support, the frameworks do not work when added as a dependency to Swift Package Manager. 

So now this project rebuilds Google's XCFrameworks so they can be added as a dependency to Swift Package, preserving support for the ARM64 simulator, which allows development on Apple Silicon (M1, etc.) computers.

## Requirements

* [iOS 13.0](https://wikipedia.org/wiki/IOS_13) or later.
* [Xcode 14.0](https://developer.apple.com/xcode) or later.

## Usage
For simple usage you don't need Carthage or CocoaPods installation. 
### Add as a dependency via Package.swift to your Swift Package, or add directly in Xcode project

```swift
dependencies: [
  .package(url: "https://github.com/YAtechnologies/GoogleMaps-SP.git", .upToNextMinor(from: "7.3.0"))
]
```
### Known Issues
- If you use a Google Maps Swift package in an app with extensions, the build system incorrectly embeds the binary dependencies alongside the extension in the PlugIns directory, causing validation of the archived app to fail. (69834549) (FB8761306)
    **Workaround:** Add a scheme post-build action which removes the embedded binaries from the PlugIns directory after the build, e.g. `rm -rf "${TARGET_BUILD_DIR}/${TARGET_NAME}.app"/PlugIns/*.framework`.


## Build XCFrameworks yourself
1. Before version 7.3.0 Carthage should be installed, starting from 7.3.0 CocoaPods should be installed only. 
2. Clone this project.
3. Update Podfile file to obtain different SDK versions.
4. Run `make_xcframeworks.sh` script.
5. You can find your new XCFrameworks in the `Build` directory.
6. Upload the created archives and update Package file with link on the updated archives. In this repository we use Releases and upload the archives as attachments.

## Sponsor
If you find this package useful please consider **[STARRING 🌟](https://github.com/YAtechnologies/GoogleMaps-SP/stargazers)** this repository.

## License & Copyright

The **Google Maps iOS SDK** and **Google Places iOS SDK** libraries are the property of Google and are subject to *Google's Terms of Service*. See [LICENSE.google](LICENSE.google) for details.

This repo is provided as is, without any guarantee. It can (hopefully) become obsolete once Google fixes their SDKs.

