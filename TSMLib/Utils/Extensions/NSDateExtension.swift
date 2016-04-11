//
//  NSDateExtension.swift
//  TSMLib
//
//  Created by Franco Castellano on 3/14/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit


public extension NSDate {
    public func isSameDate(date: NSDate) -> Bool {
        let calendar: NSCalendar = NSCalendar.currentCalendar()
        
        let comp1: NSDateComponents = calendar.components([.Year, .Month, .Day], fromDate: self)
        let comp2: NSDateComponents = calendar.components([.Year, .Month, .Day], fromDate: date)
        
        return comp1.day == comp2.day && comp1.month == comp2.month && comp1.year == comp2.year
    }
    
    public func formattedDateString(date: NSDate) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.stringFromDate(date)
    }
    
    public func formattedDate(date: NSDate) -> NSDate {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.dateFromString(dateFormatter.stringFromDate(date))!
    }
    
    public func daysInBetweenDate(date: NSDate) -> Double {
        var diff = self.timeIntervalSinceNow - date.timeIntervalSinceNow
        diff = fabs(diff/86400)
        return diff
    }
    
    public func hoursInBetweenDate(date: NSDate) -> Double {
        var diff = self.timeIntervalSinceNow - date.timeIntervalSinceNow
        diff = fabs(diff/3600)
        return diff
    }
    
    public func minutesInBetweenDate(date: NSDate) -> Double {
        var diff = self.timeIntervalSinceNow - date.timeIntervalSinceNow
        diff = fabs(diff/60)
        return diff
    }
    
    public func secondsInBetweenDate(date: NSDate) -> Double {
        var diff = self.timeIntervalSinceNow - date.timeIntervalSinceNow
        diff = fabs(diff)
        return diff
    }
}
