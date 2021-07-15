[![SwiftPM Compatible](https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat)](https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# CreditKit

CreditKit is a Swift library that fetches credit score information from a mock endpoint.

## Installation

### Swift Package Manager

The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler. It is in early development, but ToteKit supports its use on supported platforms.

Once you have your Swift package set up, adding CreditKit as a dependency is as easy as adding it to the dependencies value of your Package.swift.

dependencies: [
    .package(url: "https://github.com/arvindravi/CreditKit.git")
]

## Usage

1. Import CreditKit

```swift
import CreditKit
```
2. Fetch credit information

```swift
CreditKit.shared.fetchCreditInformation { result in

}
```

## Contributing
Pull requests are welcome.

## License
[MIT](https://choosealicense.com/licenses/mit/)
