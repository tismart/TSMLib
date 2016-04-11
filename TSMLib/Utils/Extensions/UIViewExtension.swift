//
//  UIViewExtension.swift
//  TSMLib
//
//  Created by Franco Castellano on 3/14/16.
//  Copyright © 2016 Tismart. All rights reserved.
//

import UIKit

public extension UIView{
    var width:      CGFloat { return self.frame.size.width }
    var height:     CGFloat { return self.frame.size.height }
    var size:       CGSize  { return self.frame.size}
    
    var origin:     CGPoint { return self.frame.origin }
    var x:          CGFloat { return self.frame.origin.x }
    var y:          CGFloat { return self.frame.origin.y }
    var centerX:    CGFloat { return self.center.x }
    var centerY:    CGFloat { return self.center.y }
    
    var left:       CGFloat { return self.frame.origin.x }
    var right:      CGFloat { return self.frame.origin.x + self.frame.size.width }
    var top:        CGFloat { return self.frame.origin.y }
    var bottom:     CGFloat { return self.frame.origin.y + self.frame.size.height }
    
    public func setWidth(width:CGFloat)
    {
        self.frame.size.width = width
    }
    
    public func setHeight(height:CGFloat)
    {
        self.frame.size.height = height
    }
    
    public func setSize(size:CGSize)
    {
        self.frame.size = size
    }
    
    public func setOrigin(point:CGPoint)
    {
        self.frame.origin = point
    }
    
    public func setX(x:CGFloat) //only change the origin x
    {
        self.frame.origin = CGPointMake(x, self.frame.origin.y)
    }
    
    public func setY(y:CGFloat) //only change the origin x
    {
        self.frame.origin = CGPointMake(self.frame.origin.x, y)
    }
    
    public func setCenterX(x:CGFloat) //only change the origin x
    {
        self.center = CGPointMake(x, self.center.y)
    }
    
    public func setCenterY(y:CGFloat) //only change the origin x
    {
        self.center = CGPointMake(self.center.x, y)
    }
    
    public func roundCorner(radius:CGFloat)
    {
        self.layer.cornerRadius = radius
    }
    
    public func setTop(top:CGFloat)
    {
        self.frame.origin.y = top
    }
    
    public func setLeft(left:CGFloat)
    {
        self.frame.origin.x = left
    }
    
    public func setRight(right:CGFloat)
    {
        self.frame.origin.x = right - self.frame.size.width
    }
    
    public func setBottom(bottom:CGFloat)
    {
        self.frame.origin.y = bottom - self.frame.size.height
    }
    
    func addBlurEffect() {
        
        let height = self.frame.size.height
        let width = self.frame.size.width
        let x = self.frame.origin.x
        let y = self.frame.origin.y
        
        let blurEffect:UIBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let vibrancyEffect = UIVibrancyEffect(forBlurEffect: blurEffect)
        
        let vibrancyEffectView = UIVisualEffectView(effect: vibrancyEffect)
        let blurEffectView:UIVisualEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = CGRectMake(x, y, width, height)
        blurEffectView.contentView.addSubview(vibrancyEffectView)
        
        self.addSubview(blurEffectView)
    }
}
