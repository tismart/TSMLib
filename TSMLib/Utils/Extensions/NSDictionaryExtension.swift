//
//  NSDictionaryExtension.swift
//  TSMLib
//
//  Created by Franco Castellano on 4/6/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit

public extension Dictionary {

    public func notNullDictionary() -> Dictionary<String, AnyObject> {
        var aux = Dictionary<String, AnyObject>()
        
        for key in self.keys {
            if (self[key]! as! AnyObject).isKindOfClass(NSNull) {
                aux[key as! String] = ""
            } else {
                aux[key as! String] = self[key] as? AnyObject
            }
        }
        return aux;
    }
}
