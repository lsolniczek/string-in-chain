//
//  StringInChain.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 22.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

public class StringInChain {
    
    var stringToMach: String?
    var baseText: NSString
    public var attrString: NSMutableAttributedString
    
    init(string: String) {
        self.baseText = string
        self.attrString = NSMutableAttributedString(string: string)
    }
    
    init(string: String, stringToMach: String) {
        self.baseText = string
        self.stringToMach = stringToMach
        self.attrString = NSMutableAttributedString(string: string)
    }
    
    public func match(text: String) -> StringInChain {
        stringToMach = text
        return self
    }
    
    func setRange() -> NSRange {
        if let stringToMach = stringToMach as String? {
            return baseText.rangeOfString(stringToMach)
        }
        return baseText.rangeOfString(baseText as String)
    }
    
}
