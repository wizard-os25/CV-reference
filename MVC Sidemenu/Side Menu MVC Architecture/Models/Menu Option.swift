//
//  Menu Option.swift
//  Side Menu MVC Architecture
//
//  Created by Nguyen Duc Hung on 17/08/2024.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Inbox
    case Notifications
    case Guide
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Guide: return "Guide"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(systemName: "person.crop.circle.fill") ?? UIImage()
        case .Inbox: return UIImage(systemName: "message") ?? UIImage()
        case .Notifications: return UIImage(systemName: "bell") ?? UIImage()
        case .Guide: return UIImage(systemName: "book") ?? UIImage()
        }
    }
}
