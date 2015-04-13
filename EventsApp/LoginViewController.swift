//
//  LoginViewController.swift
//  EventsApp
//
//  Created by ryala on 4/7/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onLoginButtonTapped(sender: AnyObject) {
        if userNameTextField.text == "" || passwordTextField.text == ""{
            showAlert("Please enter a username and password.", nil, self)
        }
        else{
            User.loginUser(userNameTextField.text, password: passwordTextField.text, completed: { (result, error) -> Void in
              
                if error != nil{
                    showAlertWithError(error, self)
                }
                else{
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
                
            })
        }
        
    }
}
