//
//  StringInChain.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 22.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

open class StringInChain {
    
    var stringToMatch: String?
    var baseText: NSString
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
        stringToMatch = text
        return self
    }
    
    open func match(from begin: Int, to: Int) -> StringInChain {
        let range = NSMakeRange(begin, (to-begin)+1)
        stringToMatch = baseText.substring(with: range)
        return self
    }
    
    func setRange() -> NSRange {
        if let stringToMatch = stringToMatch as String? {
            return baseText.range(of: stringToMatch)
        }
        return baseText.range(of: baseText as String)
    }
    
}
