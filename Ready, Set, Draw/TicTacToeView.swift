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
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        UIColor.black.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.fill()
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: frame.minX + floor(frame.width * 0.32778) + 0.5, y: frame.minY + floor(frame.height * 0.06000) + 0.5, width: floor(frame.width * 0.35000) - floor(frame.width * 0.32778), height: floor(frame.height * 0.92667) - floor(frame.height * 0.06000)))
        UIColor.black.setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.fill()
        
        
        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: frame.minX + floor(frame.width * 0.68333) + 0.5, y: frame.minY + floor(frame.height * 0.06000) + 0.5, width: floor(frame.width * 0.70556) - floor(frame.width * 0.68333), height: floor(frame.height * 0.92667) - floor(frame.height * 0.06000)))
        UIColor.black.setStroke()
        rectangle3Path.lineWidth = 1
        rectangle3Path.fill()
        
        
        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRect(x: frame.minX + floor(frame.width * 0.07222) + 0.5, y: frame.minY + floor(frame.height * 0.63333) + 0.5, width: floor(frame.width * 0.92778) - floor(frame.width * 0.07222), height: floor(frame.height * 0.66000) - floor(frame.height * 0.63333)))
        UIColor.black.setStroke()
        rectangle5Path.lineWidth = 1
        rectangle5Path.fill()
        
        
        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(rect: CGRect(x: frame.minX + floor(frame.width * 0.07222) + 0.5, y: frame.minY + floor(frame.height * 0.31333) + 0.5, width: floor(frame.width * 0.92778) - floor(frame.width * 0.07222), height: floor(frame.height * 0.34000) - floor(frame.height * 0.31333)))
        UIColor.black.setStroke()
        rectangle6Path.lineWidth = 1
        rectangle6Path.fill()
    }

}
