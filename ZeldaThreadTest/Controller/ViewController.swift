//
//  ViewController.swift
//  ZeldaThreadTest
//
//  Created by Ranga Madushan on 4/21/18.
//  Copyright © 2018 Ranga Madushan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var tableData: [ModelData] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        let start = Date()
        
        print("STEP 1")

        DispatchQueue.global(qos: .userInteractive).async {
            self.tableData = Data.getData()
            //async kiyanne your program doesn't wait for code to finish
            //it continues on many things can happen same time
            print("STEP 3")
            DispatchQueue.main.async {
                self.tableView.reloadData()
                //meka UI ekak so meka main thread eke tiyenna ona ekak
                //uda eka kiyanne background thread ekak
                print("STEP 4")
            }
        }
        
        print("STEP 2")
        
        
        let end = Date()
        
        print("ELAPSED TIME: \(end.timeIntervalSince(start))")
      /* tableView.dataSource = self meka liwwe naththoth table view eka load wenne na
        ewagemai table ekata ona data ganne mul function eken tableData = Data.getData()
        nisa eka mekat kalin liyanth ona */
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell") as! CharacterCell
        cell.setup(item: tableData[indexPath.row])
        return cell
        
    }
   


}//class




















