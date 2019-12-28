//
//  ViewController.swift
//  MVP-Design-Patterns-EX
//
//  Created by Mohamed Samir on 12/26/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

extension UserVC : UITableViewDelegate , UITableViewDataSource {

   func setupTableView(){
    TableView.delegate = self
    TableView.dataSource = self
    TableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
   }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getUserCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        presenter.configureCell(cell: cell, for: indexPath.row)
        return cell
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectRow(index: indexPath.row)
    }
}
