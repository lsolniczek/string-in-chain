//
//  StringInChain.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 22.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

public class StringInChain {
    
    var stringToMatch: String?
    var baseText: NSString
    public var attrString: NSMutableAttributedString

    init(string: String, stringToMatch: String? = nil) {
        self.baseText = string
		self.stringToMatch = stringToMatch
        self.attrString = NSMutableAttributedString(string: string)
    }
    
    public func match(text: String) -> StringInChain {
        stringToMatch = text
        return self
    }
    
    public func match(from begin: Int, to: Int) -> StringInChain {
        let range = NSMakeRange(begin, to-begin)
        stringToMatch = baseText.substringWithRange(range)
        return self
    }
    
    func setRange() -> NSRange {
        if let stringToMatch = stringToMatch {
            return baseText.rangeOfString(stringToMatch)
        } else {
			return baseText.rangeOfString(baseText as String)
		}
    }
    
}
