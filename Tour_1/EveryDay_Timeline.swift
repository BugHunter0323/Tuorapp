//
//  EveryDay_Timeline.swift
//  Tour_1
//
//  Created by FreeBird on 11/11/19.
//  Copyright © 2019 FreeBird. All rights reserved.
//

import Foundation

class EveryDay_Timeline {
    
    var tuor_day: String
    var tuor_month: String
    var tuor_date: String
    var tuor_name: String
    var tuor_other_info: String
    
    init(tuor_day: String, tuor_month: String, tuor_date:String, tuor_name: String, tuor_other_info:String) {
        
        self.tuor_date = tuor_date
        self.tuor_day = tuor_day
        self.tuor_name = tuor_name
        self.tuor_month = tuor_month
        self.tuor_other_info = tuor_other_info
    }
    
}
