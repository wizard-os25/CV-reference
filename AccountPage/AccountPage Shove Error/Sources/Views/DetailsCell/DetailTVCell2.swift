//
//  DetailTVCell2.swift
//  AccountPage Shove Error
//
//  Created by Nguyen Duc Hung on 17/08/2024.
//

import UIKit

class DetailTVCell2: UITableViewCell {
    
    static let identifier = "DetailTVCell2"
    static func nib() -> UINib {
        return UINib(nibName: "DetailTVCell2", bundle: nil)
    }
    
    public func configure(with title: String) {
        lblDetaiTitle.text = title
    }

    @IBOutlet var lblDetaiTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
