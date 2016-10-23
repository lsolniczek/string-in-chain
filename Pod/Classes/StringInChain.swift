//
//  StringInChain.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 22.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

<<<<<<< HEAD
open class StringInChain {
    
=======
#if swift(>=3.0)

public final class StringInChain {

>>>>>>> 35f3cb7191939e164e98b259adb64dcaca334a57
    var stringToMatch: String?
    var stringToSkip: String?
    var baseText: NSString
<<<<<<< HEAD
    open var attrString: NSMutableAttributedString
    
    init(string: String) {
        self.baseText = string as NSString
        self.attrString = NSMutableAttributedString(string: string)
    }
    
    init(string: String, stringToMatch: String) {
        self.baseText = string as NSString
        self.stringToMatch = stringToMatch
        self.attrString = NSMutableAttributedString(string: string)
    }
    
    open func match(_ text: String) -> StringInChain {
=======
    public var attrString: NSMutableAttributedString

    init(string: String, stringToMatch: String? = nil, skipPast: String? = nil) {
        self.baseText = string as NSString
		self.stringToMatch = stringToMatch
        self.attrString = NSMutableAttributedString(string: string)
    }
    
    public func match(_ text: String, skipPast: String? = nil) -> StringInChain {
        stringToMatch = text
        stringToSkip = skipPast
        return self
    }
    
    public func match(from begin: Int, to: Int) -> StringInChain {
        let range = NSMakeRange(begin, to-begin)
        stringToMatch = baseText.substring(with: range)
        return self
    }

    func setRange() -> NSRange {
        if let stringToMatch = stringToMatch {
			var skipRange = NSRange(location: 0, length: 0)
			if let stringToSkip = stringToSkip {
				let baseRange = baseText.range(of: stringToSkip)
				if baseRange.location != NSNotFound && baseRange.length > 0 {
					skipRange.length = baseRange.location + baseRange.length
					skipRange.location = 0
				}
			}
			let testString = baseText.replacingCharacters(in: skipRange, with: "") as NSString
            var range = testString.range(of: stringToMatch)
			if range.location != NSNotFound && range.length > 0 {
				range.location += skipRange.length
			} else {
				range = NSRange(location: 0, length: 0)
			}
			return range
        } else {
			return baseText.range(of: baseText as String)
		}
    }

}

#else

public final class StringInChain {

    var stringToMatch: String?
    var stringToSkip: String?
    var baseText: NSString
    public var attrString: NSMutableAttributedString

    init(string: String, stringToMatch: String? = nil, skipPast: String? = nil) {
        self.baseText = string
		self.stringToMatch = stringToMatch
        self.attrString = NSMutableAttributedString(string: string)
    }
    
    public func match(text: String, skipPast: String? = nil) -> StringInChain {
>>>>>>> 35f3cb7191939e164e98b259adb64dcaca334a57
        stringToMatch = text
        stringToSkip = skipPast
        return self
    }
    
<<<<<<< HEAD
    open func match(from begin: Int, to: Int) -> StringInChain {
        let range = NSMakeRange(begin, (to-begin)+1)
        stringToMatch = baseText.substring(with: range)
=======
    public func match(from begin: Int, to: Int) -> StringInChain {
        let range = NSMakeRange(begin, to-begin)
        stringToMatch = baseText.substringWithRange(range)
>>>>>>> 35f3cb7191939e164e98b259adb64dcaca334a57
        return self
    }

    func setRange() -> NSRange {
<<<<<<< HEAD
        if let stringToMatch = stringToMatch as String? {
            return baseText.range(of: stringToMatch)
        }
        return baseText.range(of: baseText as String)
=======
        if let stringToMatch = stringToMatch {
			var skipRange = NSRange(location: 0, length: 0)
			if let stringToSkip = stringToSkip {
				let baseRange = baseText.rangeOfString(stringToSkip)
				if baseRange.location != NSNotFound && baseRange.length > 0 {
					skipRange.length = baseRange.location + baseRange.length
					skipRange.location = 0
				}
			}
			let testString = baseText.stringByReplacingCharactersInRange(skipRange, withString: "") as NSString
            var range = testString.rangeOfString(stringToMatch)
			if range.location != NSNotFound && range.length > 0 {
				range.location += skipRange.length
			} else {
				range = NSRange(location: 0, length: 0)
			}
			return range
        } else {
			return baseText.rangeOfString(baseText as String)
		}
>>>>>>> 35f3cb7191939e164e98b259adb64dcaca334a57
    }

}

#endif

