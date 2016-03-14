//
//  UIImageViewExtension.swift
//  TSMLib
//
//  Created by Franco Castellano on 3/14/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    public func roundImage() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2;
    }
    
}