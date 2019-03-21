//
//  ViewController.swift
//  KARLA200319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 19-03-20.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class UserVC: UIViewController {
    
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUsersDefault()
    }
    func setUsersDefault()
    {
        self.users.append(User(firstName: "Karla", lastName: "Garcia"))
        self.users.append(User(firstName: "Raul", lastName: "Soto"))
        self.users.append(User(firstName: "Alan", lastName: "Luna"))
        self.users.append(User(firstName: "Daniel", lastName: "Hernandez"))
        self.users.append(User(firstName: "Lucia", lastName: "Montelongo"))
    }
}

extension UserVC: UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.users.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UserTVCell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        let user: User = self.users[indexPath.row]
        cell.lblUsername.text = "\(user.firstName!) \(user.lastName!)"
        
        // Configure the cell...
        
        return cell
    }
}
    
    extension UserVC: UITableViewDelegate
    {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
            print("didSelectRowAt.indexPath.row \(indexPath.row)")
        }
    }



