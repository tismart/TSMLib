//
//  TSMLibrary.swift
//  TSMLibrary
//
//  Created by Franco Castellano on 3/11/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit
import Foundation

public class TSMLibrary {
    public var networkManager = NetworkManager()
    
    public init () {
        print("Class has been initialised")
    }
    
    public class func doSomething() {
        print("Yeah, it works")
    }
}