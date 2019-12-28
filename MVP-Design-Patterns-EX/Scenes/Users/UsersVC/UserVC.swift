//
//  ViewController.swift
//  MVP-Design-Patterns-EX
//
//  Created by Mohamed Samir on 12/26/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class UserVC: UIViewController {
    
    var presenter : UsersVCPresenter!
    var activityIndicator =  UIActivityIndicatorView()
    
    @IBOutlet var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Users"
        setupTableView()
        setupIndicator()
        presenter = UsersVCPresenter(view: self)
        presenter.viewDidLoad()
        
       
    }


}

