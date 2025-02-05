//
//  SwitchTVCell.swift
//  AccountPage Shove Error
//
//  Created by Nguyen Duc Hung on 16/08/2024.
//

import UIKit

class SwitchTVCell: UITableViewCell {
    var handler: (() -> Void)?
    static let identifier = "SwitchTVCell"
    static func nib() -> UINib {
        return UINib(nibName: "SwitchTVCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String, handler: (() -> Void)?) {
        switchImage.image   = UIImage(systemName: imageName)
        switchTitle.text    = title
        self.handler = handler
    }
    @IBOutlet var switchView: UIView!
    @IBOutlet var switchImage: UIImageView!
    @IBOutlet var switchTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        switchView.layer.cornerRadius = 10
        switchImage.contentMode       = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func didChangedSwitch(_ sender: Any) {
        scheduleLocal()
    }
    
    @objc func registerLocal() {
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if granted {
                
            } else {
                
            }
        }
    }

    @objc func scheduleLocal() {
        registerLocal()
        
        let center = UNUserNotificationCenter.current()
        center.removeAllPendingNotificationRequests()
        
        let content = UNMutableNotificationContent()
        content.categoryIdentifier  = "alarm"
        content.title               = "Late wake up call."
        content.body                = "Someday, u wake up in a lovely Hotel at somewhere nearly Ponte Vecchio with your women in Florence's rainy day and miss this day u wrote this line."
        content.userInfo            = ["customData": "fizzbuzz"]
        content.sound               = .default
        
        var dateComponents          = DateComponents()
//        dateComponents.hour         = 0
//        dateComponents.minute       = 0
//        dateComponents.second       = 10
        
        let trigger                 = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request                 = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        center.add(request)
    }

    func registerCategories() {
        let center          = UNUserNotificationCenter.current()
        //center.delegate     = self
        
        let show            = UNNotificationAction(identifier: "show", title: "Tell me", options: .foreground)
        let category        = UNNotificationCategory(identifier: "alarm", actions: [show], intentIdentifiers: [])
        
        center.setNotificationCategories([category])
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo
        
        if let customData = userInfo["customData"] as? String {
            print("Custom data received: \(customData)")
            
            switch response.actionIdentifier {
            case UNNotificationDefaultActionIdentifier:
                print("Default identify")
            case "show":
                print("Show more info..")
            default:
                break
            }
        }
        
        completionHandler()
    }
    
}
