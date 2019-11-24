//
//  TourList.swift
//  Tour_1
//
//  Created by FreeBird on 11/11/19.
//  Copyright © 2019 FreeBird. All rights reserved.
//

import UIKit

class TourList: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tuorinfolist : [Tuors_short_info] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tuorinfolist = createData()
        // Do any additional setup after loading the view.
    }
    
    func createData() -> [Tuors_short_info] {
        var tempdata : [Tuors_short_info] = []
        
        let data1:Tuors_short_info = Tuors_short_info(p_name1: "Malcom", p_name2: "Will Young")
        let data2:Tuors_short_info = Tuors_short_info(p_name1: "Harry", p_name2: "Will Young")
        let data3:Tuors_short_info = Tuors_short_info(p_name1: "Michel", p_name2: "Will Young")
        let data4:Tuors_short_info = Tuors_short_info(p_name1: "Anthony", p_name2: "Will Young")
        
        tempdata.append(data1)
        tempdata.append(data2)
        tempdata.append(data3)
        tempdata.append(data4)
        
        return tempdata
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tuorinfolist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tuor_info") as! TourInfoCell
        
        cell.p_name1.text = tuorinfolist[indexPath.row].p_name1
        cell.p_name2.text = tuorinfolist[indexPath.row].p_name2
        
        return cell
    }
    
    

}
