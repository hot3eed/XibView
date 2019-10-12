# XibView
Live-rendering reusable views from `.xib` files.

## The Problem
You wanna design a re-usable control that you can use in Interface Builder, you can do this in two ways:

* Subclass and design your control programatically, which is not that convenient.
* Use a `.xib` file, have a separate subclass of your control that adds the content of your `.xib` to your control through boilerplate code called from `init(frame:)` and `init?(coder:)`, which you'll duplicate for each control.

## The Solution
1. Subclass `XibView` and make it `IBDesignable`
2. Design your control in a `.xib` that has the same name as the subclass.
3. Profit.

## Example

See `Example` directory.

## Installation

1. CocoaPods, add to your `Podfile`:
```
pod 'XibView', :git => 'https://github.com/hot3eed/XibView.git'
```
2. Carthage, add to your `Cartfile`:
```
github "hot3eed/XibView"
```

## But UIKit is dead?
Not yet. SwiftUI is still young and it's backed by UIKit anyway, so it's here to stay, for a while at least.

## Author

Abdelrahman Eid, hot3eed@gmail.com

## License

XibView is available under the Apache 2.0 license. See the LICENSE file for more info.
