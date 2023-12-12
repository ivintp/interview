//
//  ViewController.swift
//  proj
//
//  Created by iroid on 11/12/23.
//  Copyright © 2023 iroid. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {
    
    @IBOutlet var siginbutton: GIDSignInButton!
    @IBAction func apple(_ sender: Any) {
        
        
        
    }
    @IBAction func google(_ sender: Any) {
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance.presentingviewcontroller = self
    }


}

