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
        let stringRange = setRange()
        attrString.addAttribute(NSForegroundColorAttributeName, value: color, range: stringRange)
        return self
    }
    
    public func withBgColor(color: UIColor) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSBackgroundColorAttributeName, value: color, range: stringRange)
        return self
    }
    
    public func withFont(font: UIFont) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSFontAttributeName, value: font, range: stringRange)
        return self
    }
    
    public func withShadow(shadow: NSShadow) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSShadowAttributeName, value: shadow, range: stringRange)
        return self
    }
    
    public func strikeThrough(style: Bool, andColor color: UIColor? = nil) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSStrikethroughStyleAttributeName, value: style ? 1 : 0, range: stringRange)
		if let color = color {
			attrString.addAttribute(NSStrikethroughColorAttributeName, value: color, range: stringRange)
		}
        return self
    }
    
    public func underline(style: NSUnderlineStyle, andColor color: UIColor? = nil) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSUnderlineStyleAttributeName, value: style.rawValue, range: stringRange)
		if let color = color {
			attrString.addAttribute(NSUnderlineColorAttributeName, value: color, range: stringRange)
		}
        return self
    }
    
    public func withStroke(width: Double, andColor color: UIColor? = nil) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSStrokeWidthAttributeName, value: width, range: stringRange)
		if let color = color {
			attrString.addAttribute(NSStrokeColorAttributeName, value: color, range: stringRange)
		}
        return self
    }
    
}