//
//  TicTacToeView.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit
import CoreGraphics

@IBDesignable
class TicTacToeView: UIView {

    var answer:String = ""
    // used to check if textfield is changed
    func textFieldDidChange(_ textField: UITextField) -> Void{
        self.answer = textField.text!
        print(answer)
        
        let play = splitter(answer)
        for p in play {
           
            switch p{
            case "00X": drawX(point: CGPoint(x:50,y:60))
            case "00O": drawO(point: CGPoint(x:70,y:80))
                
            case "01X": drawX(point: CGPoint(x:165,y:60))
            case "01O": drawO(point: CGPoint(x: 185,y: 80))
                
            case "02X": drawX(point: CGPoint(x:290,y:60))
            case "02O": drawO(point: CGPoint(x: 310,y: 80))
                
            case "10X":drawX(point: CGPoint(x:50,y:195))
            case "10O":drawO(point: CGPoint(x: 70,y: 215))
                
            case "11X":drawX(point: CGPoint(x:165,y:195))
            case "11O":drawO(point: CGPoint(x: 185,y: 215))
                
            case "12X":drawX(point: CGPoint(x:290,y:195))
            case "12O":drawO(point: CGPoint(x: 310,y: 215))
                
            case "10X":drawX(point: CGPoint(x:50,y:330))
            case "10O":drawO(point: CGPoint(x: 70,y: 350))
                
            case "11X":drawX(point: CGPoint(x:165,y:330))
            case "11O":drawO(point: CGPoint(x: 185,y: 350))
                
            case "12X":drawX(point: CGPoint(x:290,y:330))
            case "12O":drawO(point: CGPoint(x: 310,y: 350))
                
                
            default:
                print("does't work")
            }
        }
        
    }
    override func draw(_ rect: CGRect) {
        
        let checkVal = UITextField(frame:CGRect(x: 30, y: 475, width: 200, height: 30))
        
        checkVal.borderStyle = UITextBorderStyle.bezel
        checkVal.autocapitalizationType = UITextAutocapitalizationType.words
        //checkVal.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        checkVal.addTarget(answer, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        print(answer)
        self.addSubview(checkVal)
        print(checkVal.text!)
        // just to show that it would of worked if the context issues were not present
        checkVal.text = "00X"
        // checks what is typed to see if the text maps to a value
        let play = splitter(checkVal.text!)
        for p in play {
                switch p{
                    // these are the cells in order from left to right and top to bottom
                    case "00X": drawX(point: CGPoint(x:50,y:60))
                    case "00O": drawO(point: CGPoint(x:70,y:80))
        
                    case "01X": drawX(point: CGPoint(x:165,y:60))
                    case "01O": drawO(point: CGPoint(x: 185,y: 80))
        
                    case "02X": drawX(point: CGPoint(x:290,y:60))
                    case "02O": drawO(point: CGPoint(x: 310,y: 80))
        
                    case "10X":drawX(point: CGPoint(x:50,y:195))
                    case "10O":drawO(point: CGPoint(x: 70,y: 215))
        
                    case "11X":drawX(point: CGPoint(x:165,y:195))
                    case "11O":drawO(point: CGPoint(x: 185,y: 215))
        
                    case "12X":drawX(point: CGPoint(x:290,y:195))
                    case "12O":drawO(point: CGPoint(x: 310,y: 215))
        
                    case "10X":drawX(point: CGPoint(x:50,y:330))
                    case "10O":drawO(point: CGPoint(x: 70,y: 350))
        
                    case "11X":drawX(point: CGPoint(x:165,y:330))
                    case "11O":drawO(point: CGPoint(x: 185,y: 350))
        
                    case "12X":drawX(point: CGPoint(x:290,y:330))
                    case "12O":drawO(point: CGPoint(x: 310,y: 350))
        
        
                    default:
                        print("does't work")
                    }
                }
       
        drawBoard()

        

        

    }

}
// draw a x on the board
func drawX(point:CGPoint) -> Void {
        let x = UIBezierPath()
        x.move(to: CGPoint(x: point.x, y: point.y))
        x.addLine(to:CGPoint(x:point.x + 30 ,y: point.y + 30))
        x.stroke()
        x.move(to: CGPoint(x: point.x, y:point.y + 30))
        x.addLine(to: CGPoint(x: point.x + 30,y:point.y))
        x.stroke()
    
}
// draw a O on the board
func drawO(point:CGPoint) -> Void {
            let o = UIBezierPath()
            o.addArc(withCenter: CGPoint(x:point.x, y: point.y), radius: 20, startAngle: 0.0, endAngle: 2 * .pi, clockwise: true)
            o.stroke()
    
}
// draw the board
func drawBoard() -> Void {
 
    let bezierPath = UIBezierPath()
    UIColor.black.setStroke()
    bezierPath.lineWidth = 1
    bezierPath.fill()

    
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
    

}
// used to split the string by a space
func splitter(_ datastr: String) -> [String]{
    let dataCharacters = datastr.split(separator: " ")
    var answer:[String] = []
    for i in 0..<dataCharacters.count{
        answer.append(String(dataCharacters[i]))
    }
    return answer
}
