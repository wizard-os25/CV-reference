//
//  StandardTableViewCell.swift
//  Standard Form TableView
//
//  Created by Nguyen Duc Hung on 15/08/2024.
//

import UIKit

class StandardTableViewCell: UITableViewCell {
    
    static let identifier = "StandardTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "StandardTableViewCell", bundle: nil)
    }
    
    public func configure(title: String) {
        lblStandardName.text = title
    }
    
    @IBOutlet var lblStandardName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
