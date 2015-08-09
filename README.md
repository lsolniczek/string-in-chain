# StringInChain

[![CI Status](http://img.shields.io/travis/Lukasz Solniczek/StringInChain.svg?style=flat)](https://travis-ci.org/Lukasz Solniczek/StringInChain)
[![Version](https://img.shields.io/cocoapods/v/StringInChain.svg?style=flat)](http://cocoapods.org/pods/StringInChain)
[![License](https://img.shields.io/cocoapods/l/StringInChain.svg?style=flat)](http://cocoapods.org/pods/StringInChain)
[![Platform](https://img.shields.io/cocoapods/p/StringInChain.svg?style=flat)](http://cocoapods.org/pods/StringInChain)

----

An convenient and fast approach to create `AttributedString`.

StringInChain give you a far more clean way to create attributed string.

# The Old Way

With the old way, create am attributed string is dirty and complex.

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

# With StringInChain

```
let baseString = "String In Chain"
var attrText = baseString.chain { (string) -> Void in
string.match("String").withColor(UIColor.blueColor()).withFont(UIFont(name: "Avenir", size: 30.0)!)
string.match("In").underline(1, andColor: UIColor.yellowColor())
string.match("Chain").withStroke(1, andColor: UIColor.blackColor())
}
label.attributedText = attrText.attrString
```
Clean and Easy, don't You think?



----

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

Lukasz Solniczek, l.solniczek@gmail.com

## License

StringInChain is available under the MIT license. See the LICENSE file for more info.
