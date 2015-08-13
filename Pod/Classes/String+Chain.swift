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
    
    public func match(string: String) -> StringInChain {
        return StringInChain(string: self, stringToMatch: string)
    }
    
}