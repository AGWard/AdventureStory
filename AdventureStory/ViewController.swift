//
//  ViewController.swift
//  AdventureStory
//
//  Created by Anthony Ward on 1/2/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var submitButton: UIButton!
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


}

