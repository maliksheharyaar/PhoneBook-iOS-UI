//
//  UserViewController.swift
//  Assignment_1
//
//  Created by Malik Sheharyaar Talhat on 2019-09-19.
//  Copyright © 2019 Malik Sheharyaar Talhat. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var tfName: UITextField!
    @IBOutlet var tfEmail : UITextField!
    @IBOutlet var slAge : UISlider!
    @IBOutlet var lblAge : UILabel!

    
    
    func updateLabel(){
        
        let age = slAge.value
        let strAge = String(format: "%.f",age)
        lblAge.text = strAge
        lblAge.isHidden = false
    }
    
    @IBAction func sliderValueChanged(sender : UISlider){
        updateLabel()
    }
    
    
    //Used to display error alerts and to display a "Thank you" message upon validation
    @IBAction func displayAlert(sender : UIButton){
        
        
        if (tfName.text != "" && tfEmail.text != ""){
            
            let alert = UIAlertController(title: "Successful", message:String(format:"Thank you %@ for registering with %@",tfName.text!,tfEmail.text!), preferredStyle: .alert)
            
            
            let noAction = UIAlertAction(title: "Add another user", style: .cancel, handler: nil)
            
            let yesAction = UIAlertAction(title: "Finish", style: .default, handler:
            { ( alert : UIAlertAction!) in
                self.dismiss(animated: true, completion: nil)
                
            })
            alert.addAction(yesAction)
            alert.addAction(noAction)
            present(alert, animated: true)
            
        }else{
            let alert = UIAlertController(title: "Error", message:"The name and email address are required fields", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        lblAge.isHidden = true

    }
    
}
