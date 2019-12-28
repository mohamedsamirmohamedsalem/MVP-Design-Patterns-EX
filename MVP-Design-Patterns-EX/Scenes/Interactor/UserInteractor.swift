//
//  UserInteractor.swift
//  MVP-Design-Patterns-EX
//
//  Created by Mohamed Samir on 12/26/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation

struct UserInteractor {
    
    private let URL = "https://jsonplaceholder.typicode.com/users"
    func GetUsers(completionHandler : @escaping (_ response:[User]?)->()){
        API.get(url: URL, parameter: nil, headers: nil) { (check, Response : [User]?, statusCode) in
            guard let response = Response else {fatalError()}
            completionHandler(response)
        }
    }
    
}
