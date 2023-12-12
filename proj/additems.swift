//
//  additems.swift
//  proj
//
//  Created by iroid on 11/12/23.
//  Copyright © 2023 iroid. All rights reserved.
//

import UIKit

class additems: UIViewController {
 var imagePicker = UIImagePickerController()
    @IBAction func imagepick(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            imagePicker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
                           imagePicker.sourceType = .photoLibrary
                           imagePicker.allowsEditing = false

                           present(imagePicker, animated: true, completion: nil)
                       }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
