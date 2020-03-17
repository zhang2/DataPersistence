//
//  PlistViewController.swift
//  MianProject
//
//  Created by apple on 3/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class PlistViewController: UIViewController {

    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension PlistViewController {
    
    @IBAction func write(_ sender: Any) {
        guard let path = Bundle.main.path(forResource: "testPlist", ofType: "plist") else { return }
        print("path\(path)")
        let dict: NSMutableDictionary = NSMutableDictionary()
        dict.setValue(userIdLabel.text, forKey: "userID")
        dict.setValue(nameLabel.text, forKey: "name")
        
        dict.write(toFile: path, atomically: true)
    }
    
    @IBAction func read(_ sender: Any) {
        guard let path = Bundle.main.path(forResource: "testPlist", ofType: "plist") else { return }
        let dict: NSDictionary = NSDictionary(contentsOfFile: path) ?? [: ]

        print("data：\(dict)")
    }
}
