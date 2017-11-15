//
//  FirstViewController.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {

//    @IBOutlet weak var TL_LBL: UILabel!
//    @IBOutlet weak var TC_LBL: UILabel!
//    @IBOutlet weak var TR_LBL: UILabel!
//
//    @IBOutlet weak var CL_LBL: UILabel!
//    @IBOutlet weak var CC_LBL: UILabel!
//    @IBOutlet weak var CR_LBL: UILabel!
//
//    @IBOutlet weak var BL_LBL: UILabel!
//    @IBOutlet weak var BC_LBL: UILabel!
//    @IBOutlet weak var BR_LBL: UILabel!
    
    @IBOutlet weak var tripletTF: UITextField!
    
    
    @IBAction func PlayTurnBTN(_ sender: Any) {
//        let turn = tripletTF.text
//        let play = splitter(turn!)
//        for p in play {
//            switch p{
//            case "00X": TL_LBL.text = "X"
//            case "00O": TL_LBL.text = "O"
//                
//            case "01X": TC_LBL.text = "X"
//            case "01O": TC_LBL.text = "O"
//                
//            case "02X": TR_LBL.text = "X"
//            case "02O": TR_LBL.text = "O"
//                
//            case "10X": CL_LBL.text = "X"
//            case "10O": CL_LBL.text = "O"
//                
//            case "11X": CC_LBL.text = "X"
//            case "11O": CC_LBL.text = "O"
//                
//            case "12X": CR_LBL.text = "X"
//            case "12O": CR_LBL.text = "O"
//                
//            case "10X": BL_LBL.text = "X"
//            case "10O": BL_LBL.text = "O"
//                
//            case "11X": BC_LBL.text = "X"
//            case "11O": BC_LBL.text = "O"
//                
//            case "12X": BR_LBL.text = "X"
//            case "12O": BR_LBL.text = "O"
//                
//                
//            default:
//                print("does't work")
//            }
//        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        
        
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

    func secondSplitter(_ datastr: String) -> [Character]
    {
        var answer:[Character] = []
        answer = [Character](datastr.characters)
        return answer
    }

}

