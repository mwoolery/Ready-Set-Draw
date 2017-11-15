//
//  TicTacToeView.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

@IBDesignable
class TicTacToeView: UIView {

    override func draw(_ rect: CGRect) {
        

        
       
        drawBoard()
        //TOP LEFT
        drawX(point: CGPoint(x:50,y:60))
        drawO(point: CGPoint(x:70,y:80))
        
        //TOP CENTER
        drawX(point: CGPoint(x:165,y:60))
        drawO(point: CGPoint(x: 185,y: 80))

        
        //TOP RIGHT
        drawX(point: CGPoint(x:290,y:60))
        drawO(point: CGPoint(x: 310,y: 80))

        //CENTER LEFT
        drawX(point: CGPoint(x:50,y:195))
        drawO(point: CGPoint(x: 70,y: 215))

        
        // CENTER CENTER
        drawX(point: CGPoint(x:165,y:195))
        drawO(point: CGPoint(x: 185,y: 215))

 
        //CENTER RIGHT
        drawX(point: CGPoint(x:290,y:195))
        drawO(point: CGPoint(x: 310,y: 215))
        //BOTTOM LEFT
        drawX(point: CGPoint(x:50,y:330))
        drawO(point: CGPoint(x: 70,y: 350))
       
        
        // BOTTOM CENTER
        drawX(point: CGPoint(x:165,y:330))
        drawO(point: CGPoint(x: 185,y: 350))
        //        let clock = UIBezierPath()
        //                clock.addArc(withCenter: CGPoint(x:185, y: 215), radius: 20, startAngle: 0.0, endAngle: 2 * .pi, clockwise: true)
        //                clock.stroke()
        
        //BOTTOM RIGHT
        drawX(point: CGPoint(x:290,y:330))
        drawO(point: CGPoint(x: 310,y: 350))

        

    }

}
    func drawX(point:CGPoint) -> Void {
        let x = UIBezierPath()
        x.move(to: CGPoint(x: point.x, y: point.y))
        x.addLine(to:CGPoint(x:point.x + 30 ,y: point.y + 30))
        x.stroke()
        x.move(to: CGPoint(x: point.x, y:point.y + 30))
        x.addLine(to: CGPoint(x: point.x + 30,y:point.y))
        x.stroke()
    
}
func drawO(point:CGPoint) -> Void {
            let o = UIBezierPath()
            o.addArc(withCenter: CGPoint(x:point.x, y: point.y), radius: 20, startAngle: 0.0, endAngle: 2 * .pi, clockwise: true)
            o.stroke()
    
}
//375*434
func drawBoard() -> Void {
    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    UIColor.black.setStroke()
    bezierPath.lineWidth = 1
    bezierPath.fill()
    //// Rectangle Drawing
//    let rectanglePath = UIBezierPath(rect: CGRect(x: frame.minX + floor(frame.width * 0.32778) + 0.5, y: frame.minY + floor(frame.height * 0.06000) + 0.5, width: floor(frame.width * 0.35000) - floor(frame.width * 0.32778), height: floor(frame.height * 0.92667) - floor(frame.height * 0.06000)))
//    UIColor.black.setStroke()
//    rectanglePath.lineWidth = 1
//    rectanglePath.fill()
    
    bezierPath.move(to: CGPoint(x:125, y:0))
    bezierPath.addLine(to: CGPoint(x:125, y:430))
    bezierPath.stroke()
    
    bezierPath.move(to: CGPoint(x:250, y:0))
    bezierPath.addLine(to: CGPoint(x:250, y:430))
    bezierPath.stroke()
    
    bezierPath.move(to: CGPoint(x: 0,y: 145))
    bezierPath.addLine(to: CGPoint(x:370,y: 145))
    bezierPath.stroke()
    
    bezierPath.move(to: CGPoint(x: 0,y: 290))
    bezierPath.addLine(to: CGPoint(x:370,y: 290))
    bezierPath.stroke()
    
    
    
    
    
    
    
//    //// Rectangle 3 Drawing
//    let rectangle3Path = UIBezierPath(rect: CGRect(x: frame.minX + floor(frame.width * 0.68333) + 0.5, y: frame.minY + floor(frame.height * 0.06000) + 0.5, width: floor(frame.width * 0.70556) - floor(frame.width * 0.68333), height: floor(frame.height * 0.92667) - floor(frame.height * 0.06000)))
//    UIColor.black.setStroke()
//    rectangle3Path.lineWidth = 1
//    rectangle3Path.fill()
//
//
//    //// Rectangle 5 Drawing
//    let rectangle5Path = UIBezierPath(rect: CGRect(x: frame.minX + floor(frame.width * 0.07222) + 0.5, y: frame.minY + floor(frame.height * 0.63333) + 0.5, width: floor(frame.width * 0.92778) - floor(frame.width * 0.07222), height: floor(frame.height * 0.66000) - floor(frame.height * 0.63333)))
//    UIColor.black.setStroke()
//    rectangle5Path.lineWidth = 1
//    rectangle5Path.fill()
//
//
//    //// Rectangle 6 Drawing
//    let rectangle6Path = UIBezierPath(rect: CGRect(x: frame.minX + floor(frame.width * 0.07222) + 0.5, y: frame.minY + floor(frame.height * 0.31333) + 0.5, width: floor(frame.width * 0.92778) - floor(frame.width * 0.07222), height: floor(frame.height * 0.34000) - floor(frame.height * 0.31333)))
//    UIColor.black.setStroke()
//    rectangle6Path.lineWidth = 1
//    rectangle6Path.fill()
}
