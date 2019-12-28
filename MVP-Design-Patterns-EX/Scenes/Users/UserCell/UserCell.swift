//
//  UserCell.swift
//  MVP-Design-Patterns-EX
//
//  Created by Mohamed Samir on 12/26/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell , UserCellViewDelgate {

    @IBOutlet var nameLB: UILabel!
    @IBOutlet var addressLB: UILabel!
    @IBOutlet var emailLB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func displayName(name: String) {
        nameLB.text = name
     }
     
     func displayEmail(email: String) {
        emailLB.text = email
     }
     
     func displayAddress(address: String) {
        addressLB.text = address
     }
     
}
