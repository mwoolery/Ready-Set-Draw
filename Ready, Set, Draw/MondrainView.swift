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

    
    // would set the number of rectangles user entered but it can't do that
    func setNumberOfRects(num:Int) -> Int{
        let numberOfRects = num
        return numberOfRects
    }
  
    override func draw(_ rect: CGRect) {
        
        //let frame:UIBezierPath = UIBezierPath(rect:CGRect(x: 50, y: 50, width: 150, height: 150))
        drawRectangles(numberOfRects: 50)
        //UIColor.black.set()
      //  frame.stroke()
        
       
        
    }
    // Used to draw rectangles
    func drawRectangles(numberOfRects:Int){
        
        
        // not including indigo since there isn't indigo in UIColors. violet is purple
        let myColors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
        var fillOrStroke:Int
        // makes a number of rectangles based on what the user entered
        for _ in 0...numberOfRects{
            fillOrStroke = Int(arc4random_uniform(2) + 0)
            print(fillOrStroke)
            let myrectangle = UIBezierPath(rect: CGRect(x:  Int(arc4random_uniform(150)+1), y:  Int(arc4random_uniform(400)+1), width:  Int(arc4random_uniform(100)+1), height:  Int(arc4random_uniform(100)+1)))
            
            
            // Decide if it will fill or stroke and give a random color out for those
            if fillOrStroke == 0 {
                myColors[Int(arc4random_uniform(6))].set()
                myrectangle.fill()
            } else{
                myColors[Int(arc4random_uniform(6))].set()
                myrectangle.stroke()
            }
            
            
        }
        
        
        
        
        
        
    }
    

}
