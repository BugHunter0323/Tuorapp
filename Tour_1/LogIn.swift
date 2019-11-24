//
//  LogIn.swift
//  Tour_1
//
//  Created by FreeBird on 11/11/19.
//  Copyright © 2019 FreeBird. All rights reserved.
//

import UIKit

class LogIn: UIViewController {


    @IBOutlet weak var EAN_field: UITextField!
    @IBOutlet weak var check_licence: CheckBox!
    @IBOutlet weak var User_pwd: UITextField!
    //    @IBOutlet weak var check_licence: CheckBox!
//        @IBOutlet weak var EAN_field: UITextField!
//        @IBOutlet weak var User_pwd: UITextField!
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        
    @IBAction func Login_Checking(_ sender: Any) {
        
       // licence, username and password check!
        if check_licence.isChecked {
            
            if EAN_field.text == "default" && User_pwd.text=="pys" {
                
              let alert = UIAlertController(title: "login", message: "Success.", preferredStyle: .alert)
              alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
              self.present(alert, animated: true)
        
            }
            else{
                let alert = UIAlertController(title: "Login!", message: "your username and password does not match!.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
            }
        } else{
            let alert = UIAlertController(title: "Login!", message: "please check agreement!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        
    }
   
}
    
