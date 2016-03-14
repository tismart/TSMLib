//
//  NetworkManager.swift
//  TSMLibrary
//
//  Created by Franco Castellano on 3/10/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit
import Alamofire

public typealias CompletionBlock = (dictionary : Dictionary<String, AnyObject>?) -> ()

public class NetworkManager: NSObject {
    
    public var initialUrl = ""
    
    public func postUrlWithCompletion(url: String, completion : CompletionBlock) {
        Alamofire.request(.POST, initialUrl.stringByAppendingString(url)).responseJSON { (response) -> Void in
            guard response.result.isSuccess else {
                print("Error: \(response.result.error)")
                completion(dictionary: nil)
                return
            }
            
            let dict = response.result.value as! Dictionary<String, AnyObject>
            
            completion(dictionary: dict)
        }
    }
    
    public func getUrlWithCompletion(url: String, completion : CompletionBlock) {
        Alamofire.request(.GET, initialUrl.stringByAppendingString(url)).responseJSON { (response) -> Void in
            guard response.result.isSuccess else {
                print("Error: \(response.result.error)")
                completion(dictionary: nil)
                return
            }
            
            let dict = response.result.value as! Dictionary<String, AnyObject>
            
            completion(dictionary: dict)
        }
    }
    
    
    
    
}
