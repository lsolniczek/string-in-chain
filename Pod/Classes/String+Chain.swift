//
//  String+Chain.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 22.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

extension String {
    
    public func chain(chainString: (string: StringInChain) -> Void) -> StringInChain {
        let chainedString = StringInChain(string: self)
        chainString (string: chainedString)
        return chainedString
    }

	// match can be used as match() to match the whole string, or supply an argument to operate on the first match
    public func match(string: String? = nil) -> StringInChain {
        return StringInChain(string: self, stringToMatch: string)
    }
    
}

// This allows us to easily append strings to another - s0 + s1 + s2 -? appends s1 to s0, then appends s2 to s0
public func + (left: NSMutableAttributedString, right: NSMutableAttributedString) -> NSMutableAttributedString {
	left.appendAttributedString(right)
	return left
}
