//
//  StringInChain+Color.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 23.06.2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import UIKit

extension StringInChain {

    public func withColor(_ color: UIColor) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSForegroundColorAttributeName, value: color, range: stringRange)
        return self
    }
    
    public func withBgColor(_ color: UIColor) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSBackgroundColorAttributeName, value: color, range: stringRange)
        return self
    }
    
    public func withFont(_ font: UIFont) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSFontAttributeName, value: font, range: stringRange)
        return self
    }
    
    public func withShadow(_ shadow: NSShadow) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSShadowAttributeName, value: shadow, range: stringRange)
        return self
    }
    
    public func strikeThrough(_ style: Bool, andColor color: UIColor? = nil) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSStrikethroughStyleAttributeName, value: style ? 1 : 0, range: stringRange)
		if let color = color {
			attrString.addAttribute(NSStrikethroughColorAttributeName, value: color, range: stringRange)
		}
        return self
    }
    
    public func underline(_ style: NSUnderlineStyle, andColor color: UIColor? = nil) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSUnderlineStyleAttributeName, value: style.rawValue, range: stringRange)
		if let color = color {
			attrString.addAttribute(NSUnderlineColorAttributeName, value: color, range: stringRange)
		}
        return self
    }

    public func underline(_ styles: [NSUnderlineStyle], andColor color: UIColor? = nil) -> StringInChain {
		let rawValue: Int = styles.reduce(0, { return $0 | $1.rawValue } )
        let stringRange = setRange()
        attrString.addAttribute(NSUnderlineStyleAttributeName, value: rawValue, range: stringRange)
		if let color = color {
			attrString.addAttribute(NSUnderlineColorAttributeName, value: color, range: stringRange)
		}
        return self
    }

    public func withStroke(_ width: Double, andColor color: UIColor? = nil) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSStrokeWidthAttributeName, value: width, range: stringRange)
		if let color = color {
			attrString.addAttribute(NSStrokeColorAttributeName, value: color, range: stringRange)
		}
        return self
    }
    
    public func withParagraphStyle(_ style: NSParagraphStyle) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSParagraphStyleAttributeName, value: style, range: stringRange)
        return self
    }

    public func withKerning(_ kerning: Double) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSKernAttributeName, value: kerning, range: stringRange)
        return self
    }    

    public func withLink(_ url: URL) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSLinkAttributeName, value: url, range: stringRange)
        return self
    }    

    public func withParagraphStyle(paragraphStyle:NSMutableParagraphStyle) -> StringInChain {
        let stringRange = setRange()
        attrString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: stringRange)
        return self
    }
}
