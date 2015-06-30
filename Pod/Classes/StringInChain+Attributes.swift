//
//  StringInChain+Color.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 23.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

extension StringInChain {
    
    public func withColor(color: UIColor) -> StringInChain {
        var stringRange = setRange()
        attrString.addAttribute(NSForegroundColorAttributeName, value: color, range: stringRange)
        return self
    }
    
    public func withBgColor(color: UIColor) -> StringInChain {
        var stringRange = setRange()
        attrString.addAttribute(NSBackgroundColorAttributeName, value: color, range: stringRange)
        return self
    }
    
    public func withFont(font: UIFont) -> StringInChain {
        var stringRange = setRange()
        attrString.addAttribute(NSFontAttributeName, value: font, range: stringRange)
        return self
    }
    
    public func withShadow(shadow: NSShadow) -> StringInChain {
        var stringRange = setRange()
        attrString.addAttribute(NSShadowAttributeName, value: shadow, range: stringRange)
        return self
    }
    
    public func strikeThrough(style: Int, andColor color: UIColor) -> StringInChain {
        var stringRange = setRange()
        attrString.addAttribute(NSStrikethroughStyleAttributeName, value: style, range: stringRange)
        attrString.addAttribute(NSStrikethroughColorAttributeName, value: color, range: stringRange)
        return self
    }
    
    public func underline(style: Int, andColor color: UIColor) -> StringInChain {
        var stringRange = setRange()
        attrString.addAttribute(NSUnderlineStyleAttributeName, value: style, range: stringRange)
        attrString.addAttribute(NSUnderlineColorAttributeName, value: color, range: stringRange)
        return self
    }
    
    public func withStroke(width: Int, andColor color: UIColor) -> StringInChain {
        var stringRange = setRange()
        attrString.addAttribute(NSStrokeWidthAttributeName, value: width, range: stringRange)
        attrString.addAttribute(NSStrokeColorAttributeName, value: color, range: stringRange)
        return self
    }
    
}