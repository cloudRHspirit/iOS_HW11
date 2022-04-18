//
//  ViewController.swift
//  HobbiesWithLogin
//
//  Created by Roman Hural on 02.02.2022.
//

import UIKit

class logInViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPassWordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPassWordButton {
            segue.destination.navigationItem.title = "Forgot Password?"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username?"
        }
    }
    
    func dataFilling() {
        if usernameTextField.text != "" && passwordTextField.text != "" {
            logInButton.isEnabled = true
        } else {
            logInButton.isEnabled = false
        }
    }
    
    @IBAction func forgotUserNamePressed(_ sender: UIButton) {
 performSegue(withIdentifier: "forgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPassWordPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "forgottenUsernameOrPassword", sender: sender)
    }
     
    @IBAction func edChanged(_ sender: UITextField) {
        dataFilling()
            
    }
    
    @IBAction func passwordEditing(_ sender: UITextField) {
        dataFilling()
    }
}

