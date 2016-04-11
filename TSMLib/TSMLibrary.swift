//
//  TSMLibrary.swift
//  TSMLibrary
//
//  Created by Franco Castellano on 3/11/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit
import Foundation
import MagicalRecord
import GoogleMaps

public class TSMLibrary {
    public var networkManager = NetworkManager()
    public var databaseManager = DatabaseManager()
    
    public class func initializeDataBaseWithName(name name : String) {
        MagicalRecord.setupCoreDataStackWithStoreNamed(name)
    }
    
    public class func initializeGoogleMapsWithKey(key key : String) {
        GMSServices.provideAPIKey(key)
    }
}