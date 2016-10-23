//
//  String+Chain.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 22.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation



#if swift(>=3.0)

extension String {

    public func chain(_ chainString: (_ string: StringInChain) -> Void) -> StringInChain {
        let chainedString = StringInChain(string: self)
        chainString (chainedString)
        return chainedString
    }

	// match can be used as match() to match the whole string, or supply an argument to operate on the first match
    public func match(string stringToMatch: String? = nil) -> StringInChain {
        return StringInChain(string: self, stringToMatch: stringToMatch)
    }

}

// This allows us to easily append strings to another - s0 + s1 + s2 -? appends s1 to s0, then appends s2 to s0
public func + (left: NSMutableAttributedString, right: NSAttributedString) -> NSMutableAttributedString {
	left.append(right)
	return left
}

public func += (left: NSMutableAttributedString, right: NSAttributedString) {
	left.append(right)
	return
}

#else

extension String {
    
<<<<<<< HEAD
    public func chain(_ chainString: (_ string: StringInChain) -> Void) -> StringInChain {
=======
    public func chain(@noescape chainString: (string: StringInChain) -> Void) -> StringInChain {
>>>>>>> 35f3cb7191939e164e98b259adb64dcaca334a57
        let chainedString = StringInChain(string: self)
        chainString (chainedString)
        return chainedString
    }
<<<<<<< HEAD
    
    public func match(_ string: String) -> StringInChain {
        return StringInChain(string: self, stringToMatch: string)
    }
    
}
=======

	// match can be used as match() to match the whole string, or supply an argument to operate on the first match
    public func match(string stringToMatch: String? = nil) -> StringInChain {
        return StringInChain(string: self, stringToMatch: stringToMatch)
    }

}

// This allows us to easily append strings to another - s0 + s1 + s2 -? appends s1 to s0, then appends s2 to s0
public func + (left: NSMutableAttributedString, right: NSAttributedString) -> NSMutableAttributedString {
	left.appendAttributedString(right)
	return left
}

public func += (left: NSMutableAttributedString, right: NSAttributedString) -> NSMutableAttributedString {
	left.appendAttributedString(right)
	return left
}

#endif
>>>>>>> 35f3cb7191939e164e98b259adb64dcaca334a57
