//
//  CheckBox.swift
//  Tour_1
//
//  Created by FreeBird on 11/11/19.
//  Copyright © 2019 FreeBird. All rights reserved.
//

import UIKit

class CheckBox: UIButton {

    //image
     let checkedImage=UIImage(named: "Checked_checkbox")! as UIImage
     let uncheckedImage=UIImage(named:"Unchecked_checkbox")! as UIImage
     
    //bool property
     
     var isChecked:Bool = false{
         didSet{
             if isChecked == true{
                 self.setImage(checkedImage, for: .normal)
                 self.setImage(checkedImage, for: .normal)
             }else{
                 self.setImage(uncheckedImage, for: .normal)
             }
         }
     }

     override func awakeFromNib() {
         
         self.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
         self.isChecked = false
     }

     @objc func buttonClicked(_ sender:UIButton) {

         if(sender == self){
             if isChecked == true{
                 isChecked = false
             }else{
                 isChecked = true
             }
         }
     }


}
