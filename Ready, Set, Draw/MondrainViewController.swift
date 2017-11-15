//
//  MondrainViewController.swift
//  Ready, Set, Draw
//
//  Created by student on 11/13/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class MondrainViewController: UIViewController{

    @IBOutlet weak var numberOfRectanglesTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        if numberOfRectanglesTF == nil{
            let alert = UIAlertController(title: "Enter a number",
                                          message: "",
                                          preferredStyle: .alert)
            
            let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
            
            
            alert.addAction(cancel)
            if Int(numberOfRectanglesTF.text!) == nil{
                present(alert, animated: true, completion: nil)
            }
        }
        else{
            var newView:UIView = MondrainView()
            
            //(self,Int(numberOfRectanglesTF.text!)!)
            //MondrainView.draw
        }
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }

    @IBAction func drawRectanglesBTN(_ sender: Any) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
