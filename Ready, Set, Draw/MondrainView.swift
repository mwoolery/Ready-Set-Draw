//
//  MondrainView.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit




@IBDesignable
class MondrainView: UIView {

   
    override func draw(_ rect: CGRect) {
        // Draw a frame
        UIColor.black.set()
        let rectangle = drawRectangles(numberOfRects: 100)
        rectangle.fill()
       
        
    }
    func drawRectangles(numberOfRects:Int) ->UIBezierPath{
        let myPath:UIBezierPath = UIBezierPath()
        
        // not including indigo since there isn't indigo in UIColors. violet is purple
        let myColors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
        var fillOrStroke:Int
        
        for _ in 0...numberOfRects{
            fillOrStroke = Int(arc4random_uniform(1))
            let myrectangle = UIBezierPath(rect: CGRect(x:  Int(arc4random_uniform(100)+1), y:  Int(arc4random_uniform(100)+1), width:  Int(arc4random_uniform(100)+1), height:  Int(arc4random_uniform(100)+1)))
            
            
            
            if fillOrStroke == 0 {
                myColors[Int(arc4random_uniform(5))].set()
                myrectangle.fill()
            } else{
                myColors[Int(arc4random_uniform(5))].set()
                myrectangle.stroke()
            }
            
            myPath.append(myrectangle)
        }
        
        
        
        
        return myPath
        
    }
    

}
