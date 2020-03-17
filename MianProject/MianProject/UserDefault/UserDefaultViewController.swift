//
//  UserDefaultViewController.swift
//  MianProject
//
//  Created by apple on 3/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class UserDefaultViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension UserDefaultViewController {
    
    @IBAction func create(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        defaults.set(passwordTextField.text, forKey: "password")
        defaults.set(nameTextField.text, forKey: "name")
        
        defaults.synchronize()
    }
    
    @IBAction func read(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        let name = defaults.object(forKey: "name")
        
        print("name\(String(describing: name))")
    }
    
    @IBAction func remove(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        defaults.removeObject(forKey: "password")
        
        defaults.synchronize()
        
        let password = defaults.object(forKey: "password")
        print("password\(String(describing: password))")
        
    }
}
