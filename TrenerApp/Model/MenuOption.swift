//
//  MenuOption.swift
//  TrenerApp
//
//  Created by Resembrink Correa Egoavil on 11/3/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import UIKit

enum  MenuOption: Int, CustomStringConvertible{
    
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    
    var description: String{
        
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        
        switch self {
            
        case .Profile: return UIImage(named: "menuitem1") ?? UIImage()
        case .Inbox: return UIImage(named: "menuitem2") ?? UIImage()
        case .Notifications: return UIImage(named: "menuitem3") ?? UIImage()
        case .Settings: return UIImage(named: "menuitem1") ?? UIImage()
            
        }
    }
}
