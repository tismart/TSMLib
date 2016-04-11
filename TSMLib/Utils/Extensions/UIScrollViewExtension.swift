//
//  UIScrollViewExtension.swift
//  TSMLib
//
//  Created by Franco Castellano on 3/14/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit

public extension UIScrollView {
    var currentPage:Int {
        return Int((self.contentOffset.x+(0.5*self.frame.size.width))/self.frame.width)
    }
    
    public func scrollToPage(page page : Int) {
        self.setContentOffset(CGPointMake(CGFloat(page) * self.frame.size.width, 0), animated: true)
    }
}