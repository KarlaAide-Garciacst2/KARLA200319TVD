//
//  UserTVC.swift
//  KARLA200319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 19-03-20.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class UserTVC: UITableViewController {
    
    let usernames: [String] = ["Karla","Raul","Alan","Gaby"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.usernames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UserTVCell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        let username: String = self.usernames[indexPath.row]
        cell.lblUsername.text = username

        // Configure the cell... 

        return cell
    }
}
