//
//  ViewController.swift
//  MVP-Design-Patterns-EX
//
//  Created by Mohamed Samir on 12/26/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

extension UserVC : UsersViewDelgate {
    
    func setupIndicator(){
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.large
        self.view.addSubview(activityIndicator)
    }
    
    func showIndicator() {
        activityIndicator.startAnimating()
    }
    
    func hideIndicator() {
        activityIndicator.stopAnimating()
    }
    
    func fetchDataSuccess() {
        TableView.reloadData()
    }
    
    func navigateToDetailsScreen(user: User) {
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
}
