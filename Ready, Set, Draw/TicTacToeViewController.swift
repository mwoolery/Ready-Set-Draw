//
//  FirstViewController.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {


    
 //   @IBOutlet weak var tripletsTF: UITextField!
//    @IBAction func PlayTurnBTN(_ sender: Any) {
////
////        let turn = tripletsTF.text
////        let play = splitter(turn!)
////        for p in play {
////            switch p{
////            case "00X": print()
////            case "00O":print()
////
////            case "01X":print()
////            case "01O":print()
////
////            case "02X":print()
////            case "02O":print()
////
////            case "10X":print()
////            case "10O":print()
////
////            case "11X":print()
////            case "11O":print()
////
////            case "12X":print()
////            case "12O":print()
////
////            case "10X":print()
////            case "10O":print()
////
////            case "11X":print()
////            case "11O":print()
////
////            case "12X":print()
////            case "12O":print()
////
////
////            default:
////                print("does't work")
////            }
////        }
//        
//    }
//    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
//        let newView = TicTacToeView(frame: CGRect(origin: CGPoint(x:0,y:0), size: CGSize(width: 375, height: 434)))
//        newView.checkVal = "00X"
//        newView.draw(CGRect(x:0,y:0, width: 375, height: 434))
//   
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func splitter(_ datastr: String) -> [String]{
        let dataCharacters = datastr.split(separator: " ")
        var answer:[String] = []
        for i in 0..<dataCharacters.count{
            answer.append(String(dataCharacters[i]))
        }
        return answer
    }


}

