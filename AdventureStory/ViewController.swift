//
//  ViewController.swift
//  AdventureStory
//
//  Created by Anthony Ward on 1/2/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

protocol credentilDelegate {
    
    func submitToStory()
}

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var delegate: credentilDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      submitButton.isEnabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if (textField.text?.characters.count)! > 0 {
            submitButton.isEnabled = true
        }
        else {
            submitButton.isEnabled = false
        }
        return true
    }

    @IBAction func submit() {
        if (userNameField.text == "anthony") && (passwordField.text == "1234") {
            delegate?.submitToStory()
        } else {
            let alertController = UIAlertController(title: "Error", message: "incorrect username and/or password", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
            
            alertController.addAction(ok)
            
            present(alertController, animated: true, completion: nil)
        }
    }

}

