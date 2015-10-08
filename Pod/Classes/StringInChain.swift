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

// DFH: by using a predefined optional for stringToMatch below, we can get rid of this initializer
//    init(string: String) {
//        self.baseText = string
//        self.attrString = NSMutableAttributedString(string: string)
//    }

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
        let range = NSMakeRange(begin, (to-begin)+1)
        stringToMatch = baseText.substringWithRange(range)
        return self
    }
    
    func setRange() -> NSRange {
        if let stringToMatch = stringToMatch {		// DFH: was "stringToMatch as String?"
            return baseText.rangeOfString(stringToMatch)
        }
        return baseText.rangeOfString(baseText as String)
    }
    
}
