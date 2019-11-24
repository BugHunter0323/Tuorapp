//
//  Tour_Timeline_List.swift
//  Tour_1
//
//  Created by FreeBird on 11/11/19.
//  Copyright © 2019 FreeBird. All rights reserved.
//

import UIKit

class Tour_Timeline_List: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    var testdata: [EveryDay_Timeline] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        // Do any additional setup after loading the view.
        testdata = creatData()
    }
    
    func creatData() -> [EveryDay_Timeline] {
        
        var tempdata: [EveryDay_Timeline] = []
        
        let data1:EveryDay_Timeline = EveryDay_Timeline(tuor_day: "MON", tuor_month: "OCT", tuor_date: "21", tuor_name: "Bonues Arena", tuor_other_info: "ODESK GBB")
        let data2:EveryDay_Timeline = EveryDay_Timeline(tuor_day: "TUD", tuor_month: "OCT", tuor_date: "22", tuor_name: "Aleksei Zolotov", tuor_other_info: "ODESK GBB")
        let data3:EveryDay_Timeline = EveryDay_Timeline(tuor_day: "WED", tuor_month: "OCT", tuor_date: "23", tuor_name: "Lyov Oylov", tuor_other_info: "ODESK GBB")
        let data4:EveryDay_Timeline = EveryDay_Timeline(tuor_day: "TUS", tuor_month: "OCT", tuor_date: "24", tuor_name: "Boris Jhonson", tuor_other_info: "ODESK GBB")
        
        tempdata.append(data1)
        tempdata.append(data2)
        tempdata.append(data3)
        tempdata.append(data4)
        
        return tempdata
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return testdata.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "timelinecell") as! TuorTimelineCell
        
        cell.setEeveyDay_Timeline(everyday_data: testdata[indexPath.row])
        
        return cell
     }

   

}
