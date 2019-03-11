//
//  CircleTimer.swift
//  CPR
//
//  Created by Kay Lab on 11/14/15.
//  Copyright © 2015 Kay Lab. All rights reserved.
//

import UIKit

class CircleTimer: UIView {

    let circlePathLayer = CAShapeLayer()
    let circleRadius: CGFloat = 20.0
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    override func drawRect(rect: CGRect) {
        let radius = 100.0
        
        // Create the circle layer
        let circle = CAShapeLayer()
        
        // Set the center of the circle to be the center of the view
        let center = CGPointMake(CGRectGetMidX(self.frame) - CGFloat(radius), CGRectGetMidY(self.frame) - CGFloat(radius))
        
        let fractionOfCircle = 3.0 / 4.0
        
        let twoPi = 2.0 * Double(M_PI)
        // The starting angle is given by the fraction of the circle that the point is at, divided by 2 * Pi and less
        // We subtract M_PI_2 to rotate the circle 90 degrees to make it more intuitive (i.e. like a clock face with zero at the top, 1/4 at RHS, 1/2 at bottom, etc.)
        let startAngle = Double(fractionOfCircle) / Double(twoPi) - Double(M_PI_2)
        let endAngle = 0.0 - Double(M_PI_2)
        let clockwise: Bool = true
        
        // `clockwise` tells the circle whether to animate in a clockwise or anti clockwise direction
        circle.path = UIBezierPath(arcCenter: center, radius: CGFloat(radius), startAngle: CGFloat(startAngle), endAngle: CGFloat(endAngle), clockwise: clockwise).CGPath
        
        // Configure the circle
        circle.strokeColor = UIColor.redColor().CGColor
        circle.lineWidth = 7
        
        // When it gets to the end of its animation, leave it at 0% stroke filled
        circle.strokeEnd = 0.0
        
        // Add the circle to the parent layer
        self.layer.addSublayer(circle)
        
        // Configure the animation
        let drawAnimation = CABasicAnimation(keyPath: "strokeEnd")
        drawAnimation.repeatCount = 1.0
        
        // Animate from the full stroke being drawn to none of the stroke being drawn
        drawAnimation.fromValue = NSNumber(double: fractionOfCircle)
        drawAnimation.toValue = NSNumber(float: 0.0)
        
        drawAnimation.duration = 30.0
        
        drawAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        
        // Add the animation to the circle
        circle.addAnimation(drawAnimation, forKey: "drawCircleAnimation")
    }
}
