//
//  SecondViewController.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

// see this blogpost: http://sketchytech.blogspot.co.uk/2014/11/swift-how-to-draw-clock-face-using_12.html

enum NumberOfNumerals:Int {
    case two = 2, four = 4, twelve = 12
}
class ClockViewController: UIViewController, CAAnimationDelegate {
    
    func rotateLayer(currentLayer:CALayer,dur:CFTimeInterval){
        
        let angle = degree2radian(360)
        
        // rotation http://stackoverflow.com/questions/1414923/how-to-rotate-uiimageview-with-fix-point
        let theAnimation = CABasicAnimation(keyPath:"transform.rotation.z")
        theAnimation.duration = dur
        // Make this view controller the delegate so it knows when the animation starts and ends
        theAnimation.delegate = self
        theAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        // Use fromValue and toValue
        theAnimation.fromValue = 0
        theAnimation.repeatCount = Float.infinity
        theAnimation.toValue = angle
        
        // Add the animation to the layer
        currentLayer.add(theAnimation, forKey:"rotate")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        let endAngle = CGFloat(2*Double.pi)
        
        
        let newView = ClockView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width))
        
    
        self.view.addSubview(newView)
        let time = timeCoords(x: newView.frame.midX, y: newView.frame.midY, time: ctime(),radius: 50)
        // Do any additional setup after loading the view, typically from a nib.
        // Hours
        let hourLayer = CAShapeLayer()
        hourLayer.frame = newView.frame
        let path = CGMutablePath()
        
        path.move(to: CGPoint(x:newView.frame.midX, y:newView.frame.midY))
        path.addLine(to: CGPoint(x:time.h.x, y:time.h.y))
        hourLayer.path = path
        hourLayer.lineWidth = 4
        hourLayer.lineCap = kCALineCapRound
        hourLayer.strokeColor = UIColor.black.cgColor
        hourLayer.fillColor = UIColor.black.cgColor
        
        
        // see for rasterization advice http://stackoverflow.com/questions/24316705/how-to-draw-a-smooth-circle-with-cashapelayer-and-uibezierpath
        hourLayer.rasterizationScale = UIScreen.main.scale;
        hourLayer.shouldRasterize = true
        
        self.view.layer.addSublayer(hourLayer)
     
        hourLayer.display()
        
        // time it takes for hour hand to pass through 360 degress
        rotateLayer(currentLayer: hourLayer,dur:43200)
        
        // Minutes
        let minuteLayer = CAShapeLayer()
        minuteLayer.frame = newView.frame
        let minutePath = CGMutablePath()
        
        minutePath.move(to: CGPoint(x:newView.frame.midX, y:newView.frame.midY))
        minutePath.addLine(to: CGPoint(x:time.m.x, y:time.m.y))
        minuteLayer.path = minutePath
        minuteLayer.lineWidth = 3
        minuteLayer.lineCap = kCALineCapRound
        minuteLayer.strokeColor = UIColor.black.cgColor
        
        minuteLayer.rasterizationScale = UIScreen.main.scale;
        minuteLayer.shouldRasterize = true
        
        self.view.layer.addSublayer(minuteLayer)
        rotateLayer(currentLayer: minuteLayer,dur: 3600)
        
        // Seconds
        let secondLayer = CAShapeLayer()
        secondLayer.frame = newView.frame
        
        let secondPath = CGMutablePath()
        secondPath.move(to: CGPoint(x:newView.frame.midX, y:newView.frame.midY))
        secondPath.addLine(to: CGPoint(x:time.s.x, y: time.s.y))
        
        
        secondLayer.path = secondPath
        secondLayer.lineWidth = 1
        secondLayer.lineCap = kCALineCapRound
        secondLayer.strokeColor = UIColor.black.cgColor
        
        secondLayer.rasterizationScale = UIScreen.main.scale;
        
        secondLayer.shouldRasterize = true
        self.view.layer.addSublayer(secondLayer)
        rotateLayer(currentLayer: secondLayer,dur: 60)
        let centerPiece = CAShapeLayer()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x:newView.frame.midX,y:newView.frame.midX), radius: 4.5, startAngle: 0, endAngle: endAngle, clockwise: true)
        // thanks to http://stackoverflow.com/a/19395006/1694526 for how to fill the color
        centerPiece.path = circle.cgPath
        centerPiece.fillColor = UIColor.black.cgColor
        self.view.layer.addSublayer(centerPiece)
       
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    
    
}


// MARK: Retrieve time
func ctime ()->(h:Int,m:Int,s:Int) {
    
    var t = time_t()
    time(&t)
    let x = localtime(&t) // returns UnsafeMutablePointer
    
    return (h:Int(x!.pointee.tm_hour),m:Int(x!.pointee.tm_min),s:Int(x!.pointee.tm_sec))
}
// END: Retrieve time

// MARK: Calculate coordinates of time
func  timeCoords(x:CGFloat,y:CGFloat,time:(h:Int,m:Int,s:Int),radius:CGFloat,adjustment:CGFloat=90)->(h:CGPoint, m:CGPoint,s:CGPoint) {
    let cx = x // x origin
    let cy = y // y origin
    var r  = radius // radius of circle
    var points = [CGPoint]()
    var angle = degree2radian(6)
    func newPoint (t:Int) {
        let xpo = cx - r * cos(angle * CGFloat(t)+degree2radian(adjustment))
        let ypo = cy - r * sin(angle * CGFloat(t)+degree2radian(adjustment))
        points.append(CGPoint(x: xpo, y: ypo))
    }
    // work out hours first
    var hours = time.h
    if hours > 12 {
        hours = hours-12
    }
    let hoursInSeconds = time.h*3600 + time.m*60 + time.s
    newPoint(t: hoursInSeconds*5/3600)
    
    // work out minutes second
    r = radius * 1.25
    let minutesInSeconds = time.m*60 + time.s
    newPoint(t: minutesInSeconds/60)
    // work out seconds last
    r = radius * 1.5
    newPoint(t: time.s)
    
    return (h:points[0],m:points[1],s:points[2])
}
// END: Calculate coordinates of hour

func degree2radian(_ a:CGFloat)->CGFloat {
    let b = CGFloat(Double.pi) * a/180
    return b
}









