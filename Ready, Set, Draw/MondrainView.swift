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
        
        let frame:UIBezierPath = UIBezierPath(rect:CGRect(x: 50, y: 50, width: 150, height: 150))
        drawRectangles(numberOfRects: 100)
        UIColor.black.set()
        frame.stroke()
        
       
        
    }
    func drawRectangles(numberOfRects:Int){
        //let myPath:UIBezierPath = UIBezierPath()
        
        // not including indigo since there isn't indigo in UIColors. violet is purple
        let myColors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
        var fillOrStroke:Int
        
        for _ in 0...numberOfRects{
            fillOrStroke = Int(arc4random_uniform(2) + 0)
            print(fillOrStroke)
            let myrectangle = UIBezierPath(rect: CGRect(x:  50, y:  50, width:  Int(arc4random_uniform(150)+1), height:  Int(arc4random_uniform(150)+1)))
            
            
            
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
