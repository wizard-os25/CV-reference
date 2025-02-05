//
//  SwitchTableViewCell.swift
//  Standard Form TableView
//
//  Created by Nguyen Duc Hung on 15/08/2024.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    static let identifier = "SwitchTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "SwitchTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String) {
        lblSwitchName.text       = title
    }
    
    @IBOutlet weak var lblSwitchName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func didSwitchChanged(_ sender: UISwitch) {
        //sender = UIControl().state.
        
        if sender.isOn == true {
            print("User accepted notification.")
        } else {
            print("User rejected")
        }
    }
}
