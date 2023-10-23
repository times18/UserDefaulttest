//
//  ViewController.swift
//  UserDefaulttest
//
//  Created by Messiah on 10/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var usernameInput: UITextField!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
     
        let storedEmail = UserDefaults.standard.object(forKey: "email")
        let storedUsername = UserDefaults.standard.object(forKey: "username")
        
        if let newEmail = storedEmail as? String {
            emailLabel.text = newEmail
        }
        if let newUsername = storedUsername as? String {
            usernameLabel.text = newUsername
        }
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        UserDefaults.standard.set(emailInput.text, forKey: "email")
        UserDefaults.standard.setValue(usernameInput.text, forKey: "username")
        
        emailLabel.text = "Name: \(emailInput.text!)"
        usernameLabel.text = "Username: \(usernameInput.text!)"
        
    }
    
}

