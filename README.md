# StringInChain

[![CI Status](http://img.shields.io/travis/Lukasz Solniczek/StringInChain.svg?style=flat)](https://travis-ci.org/Lukasz Solniczek/StringInChain)
[![Version](https://img.shields.io/cocoapods/v/StringInChain.svg?style=flat)](http://cocoapods.org/pods/StringInChain)
[![License](https://img.shields.io/cocoapods/l/StringInChain.svg?style=flat)](http://cocoapods.org/pods/StringInChain)
[![Platform](https://img.shields.io/cocoapods/p/StringInChain.svg?style=flat)](http://cocoapods.org/pods/StringInChain)

----

A fast and convenient  approach to creating an `AttributedString`.

StringInChain gives you a far  superior method to create an attributed string than what the mutable class provides out of the box. [Additions by D Hoerl documented near the bottom]

# The Standard Way

Creating an attributed string is complex and wordy:

```
let baseString: NSString = "String In Chain"
var attrText = NSMutableAttributedString(string: baseString as String)
attrText.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: baseString.rangeOfString("String"))
attrText.addAttribute(NSFontAttributeName, value: UIFont(name: "Avenir", size: 30.0)!, range: baseString.rangeOfString("String"))
attrText.addAttribute(NSUnderlineStyleAttributeName, value: 1, range: baseString.rangeOfString("In"))
attrText.addAttribute(NSUnderlineColorAttributeName, value: UIColor.yellowColor(), range: baseString.rangeOfString("In"))
attrText.addAttribute(NSStrokeWidthAttributeName, value: 1, range: baseString.rangeOfString("Chain"))
attrText.addAttribute(NSStrokeColorAttributeName, value: UIColor.blackColor(), range: baseString.rangeOfString("Chain"))
label.attributedText = attrText
```

# Using StringInChain

```
let baseString = "String In Chain"
var attrText = baseString.chain { (string) -> Void in
    string.match("String").withColor(UIColor.blueColor()).withFont(UIFont(name: "Avenir", size: 30.0)!)
    string.match("In").underline(1, andColor: UIColor.yellowColor())
    string.match("Chain").withStroke(1, andColor: UIColor.blackColor())
}
label.attributedText = attrText.attrString
```

In addition to `match(text: String)` (which only finds the first occurrence of `string`), you can use:
```
match(from: Int, to:Int)
```
For example:
```
string.match(from: 7, to: 10).withColor(UIColor.blueColor()).withFont(UIFont(name: "Avenir", size: 30.0)!)
```
This way you can create `AttributedString` by match range `from` and `to`

If you want, there is also a terse inline way to make an `AttributedString`

```
label.attributedText = "String In Chain".match("String").withColor(UIColor.blueColor()).withFont(UIFont(name: "Avenir", size: 30.0)!).attrString
```

Clean and Easy, don't you think?

=======

D. Hoerl changed the `match` parameter to be an optional defaulting to nil, so you can use:

```
label.attributedText = "String In Chain".match().withColor(UIColor.blueColor()).withFont(UIFont(name: "Avenir", size: 30.0)!).attrString
```

and have the compete string set to the specified color and font. Since it's fairly easy to append.

Also added support for `+` to NSAttributedString, so you can easily chain attributed strings together.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

StringInChain is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "StringInChain"
```

## Author

<<<<<<< HEAD
Lukasz Solniczek, l.solniczek(at)gmail(dot)com
=======
Lukasz Solniczek, l dot solniczek at gmail dot com
>>>>>>> 35f3cb7191939e164e98b259adb64dcaca334a57

## License

StringInChain is available under the MIT license. See the LICENSE file for more info.
