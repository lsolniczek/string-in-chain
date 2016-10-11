//
//  StringInChain.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 22.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

#if swift(>=3.0)

public final class StringInChain {

    var stringToMatch: String?
    var stringToSkip: String?
    var baseText: NSString
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
        stringToMatch = text
        stringToSkip = skipPast
        return self
    }
    
    public func match(from begin: Int, to: Int) -> StringInChain {
        let range = NSMakeRange(begin, to-begin)
        stringToMatch = baseText.substringWithRange(range)
        return self
    }

    func setRange() -> NSRange {
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
    }

}

#endif

