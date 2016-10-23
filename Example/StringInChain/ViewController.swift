//
//  ViewController.swift
//  StringInChain
//
//  Created by Lukasz Solniczek on 06/30/2015.
//  Copyright (c) 06/30/2015 Lukasz Solniczek. All rights reserved.
//

import UIKit
import StringInChain

class ViewController: UIViewController {

    @IBOutlet weak var labelTest: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let baseString = "String In Chain"
        
        let attrText = baseString.chain { (string) -> Void in
//            string.match("String").withColor(UIColor.blueColor()).withFont(UIFont(name: "Avenir", size: 30.0)!)
//            string.match("In").underline(1, andColor: UIColor.yellowColor())
//            string.match("Chain").withStroke(1, andColor: UIColor.blackColor())
            string.match(from: 7, to: 7).withColor(UIColor.blue).withFont(UIFont(name: "Avenir", size: 30.0)!)
        }
        
        //        let baseString: NSString = "String In Chain"
        //        var attrText = NSMutableAttributedString(string: baseString as String)
        //        attrText.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: baseString.rangeOfString("String"))
        //        attrText.addAttribute(NSFontAttributeName, value: UIFont(name: "Avenir", size: 30.0)!, range: baseString.rangeOfString("String"))
        //        attrText.addAttribute(NSUnderlineStyleAttributeName, value: 1, range: baseString.rangeOfString("In"))
        //        attrText.addAttribute(NSUnderlineColorAttributeName, value: UIColor.yellowColor(), range: baseString.rangeOfString("In"))
        //        attrText.addAttribute(NSStrokeWidthAttributeName, value: 1, range: baseString.rangeOfString("Chain"))
        //        attrText.addAttribute(NSStrokeColorAttributeName, value: UIColor.blackColor(), range: baseString.rangeOfString("Chain"))
        
        
        //        labelTest.attributedText = "Dupa Jasia".match("Dupa").underline(1, andColor: UIColor.brownColor()).strikeThrough(2, andColor: UIColor.blueColor()).attrString
        labelTest.attributedText = attrText.attrString
        
    }

}

