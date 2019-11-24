//
//  TuorTimelineCell.swift
//  Tour_1
//
//  Created by FreeBird on 11/11/19.
//  Copyright © 2019 FreeBird. All rights reserved.
//

import UIKit

class TuorTimelineCell: UITableViewCell {

    @IBOutlet weak var tuor_day: UILabel!
    @IBOutlet weak var tuor_month: UILabel!
    @IBOutlet weak var tuor_date: UILabel!
    @IBOutlet weak var tuor_name: UILabel!
    @IBOutlet weak var tuor_other_info: UILabel!
    
    func setEeveyDay_Timeline(everyday_data: EveryDay_Timeline){
        
        tuor_other_info.text = everyday_data.tuor_other_info
        tuor_month.text = everyday_data.tuor_month
        tuor_name.text = everyday_data.tuor_name
        tuor_day.text = everyday_data.tuor_day
        tuor_date.text = everyday_data.tuor_date
        
    }
}
