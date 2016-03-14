//
//  UIColorExtension.swift
//  TSMLib
//
//  Created by Franco Castellano on 3/14/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit

public extension UIColor {
    convenience init(_ r: Double,_ g: Double,_ b: Double,_ a: Double) {
        self.init(red: CGFloat(r/255.0), green: CGFloat(g/255.0), blue: CGFloat(b/255.0), alpha: CGFloat(a))
    }
    
    convenience init(netHex:Int) {
        self.init(red:CGFloat((netHex >> 16) & 0xff), green:CGFloat((netHex >> 8) & 0xff), blue:CGFloat(netHex & 0xff), alpha: CGFloat(1))
    }
}
