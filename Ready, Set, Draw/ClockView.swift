//
//  ClockView.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

@IBDesignable
class ClockView: UIView {
    
 
    override func draw(_ rect:CGRect)
        
    {
        // fetch the time
        let hour = ctime().h
        let min = ctime().m
        // make clock
        let clock = UIBezierPath()
        //get size of frame
        let size = self.frame.size
        // things used to draw hour hand
        let hourHand = UIBezierPath()
        let hourArc = UIBezierPath()
        let hourAngle:CGFloat = .pi * CGFloat((Double(hour) - 3.0) / 6.0)
        //things used to draw the minute hand
        let minHand = UIBezierPath()
        let minArc = UIBezierPath()
        let minAngle:CGFloat = .pi * CGFloat(((Double(min) / 5.0) - 3.0) / 6.0)
        // add a circle
        clock.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 3.0, startAngle: 0.0, endAngle: 2 * .pi, clockwise: true)
        clock.stroke()
        // add hour hand
        hourArc.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 6.0, startAngle: 0.0, endAngle: hourAngle, clockwise: true)
        hourHand.move(to: hourArc.currentPoint)
        hourHand.addLine(to: CGPoint(x:size.width/2.0, y: size.height/2.0))
        hourHand.stroke()
        // add a minute hand
        minArc.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 4.0, startAngle: 0.0, endAngle: minAngle, clockwise: true)
        minHand.move(to: minArc.currentPoint)
        minHand.addLine(to: CGPoint(x:size.width/2.0, y: size.height/2.0))
        minHand.stroke()
        
        
        
    }
    // gets time
    func ctime ()->(h:Int,m:Int,s:Int) {
        
        var t = time_t()
        time(&t)
        let x = localtime(&t) // returns UnsafeMutablePointer
        
        return (h:Int(x!.pointee.tm_hour),m:Int(x!.pointee.tm_min),s:Int(x!.pointee.tm_sec))
    }
    

    

        
    
    
}








