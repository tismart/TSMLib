//
//  DatabaseManager.swift
//  TSMLib
//
//  Created by Franco Castellano on 3/14/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit
import MagicalRecord

public class DatabaseManager: NSObject {
    
    private func saveContext() {
        NSManagedObjectContext.MR_defaultContext().MR_saveToPersistentStoreAndWait()
    }
    
    public func newEntity(entity : String) -> NSManagedObject {
        let aClass = (NSClassFromString(entity) as! NSManagedObject.Type)
        let result = aClass.MR_createEntity()
        saveContext()
        return result!
    }
    
    public func listAllForEntity(entity : String) -> NSArray {
        let aClass = (NSClassFromString(entity) as! NSManagedObject.Type)
        let result = aClass.MR_findAll()
        return result!
    }
    
    public func fetchForEntity(entity: String, column : String, value: AnyObject) -> NSManagedObject {
        let aClass = (NSClassFromString(entity) as! NSManagedObject.Type)
        let result = aClass.MR_findFirstByAttribute(column, withValue: value)
        return result!
    }
    
    public func updateForEntity(entity : NSManagedObject, values: Dictionary<String, AnyObject>) -> NSManagedObject {
        let attributes = Array(values.keys)
        let classAttributes = entity.entity.attributesByName.keys
        
        for attribute in attributes {
            var shouldUse = false
            for classAttribute in classAttributes {
                if classAttribute == attribute {
                    shouldUse = true
                }
            }
            if shouldUse == true {
                entity.setValue(values[attribute], forKey: attribute)
            }
        }
        
        saveContext()
        return entity
    }
    
    public func deleteForEntity(entity : NSManagedObject) {
        entity.MR_deleteEntity()
        saveContext()
    }
}
