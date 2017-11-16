//
//  FirstViewController.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {


    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
      let newView = TicTacToeView(frame: CGRect(origin: CGPoint(x:0,y:0), size: CGSize(width: 375, height: 434)))
        newView.setNeedsDisplay()
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

