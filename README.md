# FuriganaTextView
A wrapper to display Furigana with SwiftUI. Based on [lingochamp/FuriganaTextView](https://github.com/lingochamp/FuriganaTextView).

![Example](./img/example.png)

## Install using SPM

Within Xcode, File > Add Packages:

`https://github.com/tombaileywzd/FuriganaTextView`

## Usage

```swift
// Note: The order of the furiganas provided to the FuriganaTextView is important.
// It must be ascending in manner of the location of the range,
// otherwise the furiganas may not be rendered at the correct position.

FuriganaTextView(
    furigana: [
      Furigana(text: "た", original: "田", range: NSMakeRange(0, 1)),
      Furigana(text: "なか", original: "中", range: NSMakeRange(1, 1)),
    ],
    text: NSAttributedString(string: "田中さん、中華料理を食べたことありますか。")
)
```

## Requirements

* Builds with __Xcode 14.2__ and __Swift 5.7__
* Supports __iOS 13 and above__

## Known Issues

* The `textContainerInset` property of the wrapped `UITextView` seems not working correctly.
* Furiganas displayed in vertical writing is not implemented.
