//
//  UsersVCPresenter.swift
//  MVP-Design-Patterns-EX
//
//  Created by Mohamed Samir on 12/28/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation

protocol UsersViewDelgate : class {
    func showIndicator()
    func hideIndicator()
    func fetchDataSuccess()
    func navigateToDetailsScreen(user:User)
}

protocol UserCellViewDelgate : class {
    func displayName(name:String)
    func displayEmail(email:String)
    func displayAddress(address:String)
}

class UsersVCPresenter {
    
    private weak var view : UsersViewDelgate?
    private let interactor = UserInteractor()
    private var users = [User]()
    
    //dependancy injection
    init(view:UsersViewDelgate) {
        self.view = view
    }
    func viewDidLoad(){
        getUsers()
    }
    func getUsers(){
        view?.showIndicator()
            interactor.GetUsers { [weak self] (users) in
                guard let self = self else {return}
                self.view?.hideIndicator()
                guard let users = users else {return}
                self.users = users
                self.view?.fetchDataSuccess()
            }
    }
    func getUserCount()->Int {
        return users.count
    }
    
    func configureCell(cell : UserCellViewDelgate , for index : Int){
        let user = users[index]
        cell.displayName(name: user.name ?? "")
        cell.displayEmail(email: user.email ?? "")
        cell.displayAddress(address: "\(user.address?.street ?? "" ) \(user.address?.suite ?? "")")
    }
   
    func didSelectRow(index:Int){
        let user = users[index]
        view?.navigateToDetailsScreen(user: user)
        
    }
}
