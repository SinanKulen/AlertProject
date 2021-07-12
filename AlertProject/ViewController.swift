//
//  ViewController.swift
//  AlertProject
//
//  Created by Sinan Kulen on 16.05.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textPassword2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonSignup(_ sender: Any) {
       
        let userText = textUsername.text!
        let passText = textPassword.text!
        let pass2Text = textPassword2.text!
        if userText == ""  {
       
        makeAlert(titleInput: "Error", messageInput: "Username not Found")
        }
        else if passText == "" {
        makeAlert(titleInput: "Error", messageInput: "Password not Found")
        }
        else if pass2Text != passText {
        makeAlert(titleInput: "Error", messageInput: "Password not matching")
        }
        else {
        makeAlert(titleInput: "Suscessfuly", messageInput: "Well Done")
        }
    }
        
        func makeAlert(titleInput : String, messageInput : String ){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("clickeddd")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        print("Successfully Sign Up !")
    }
    

    
}

