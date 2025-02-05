//
//  DetailTableViewCell.swift
//  Standard Form TableView
//
//  Created by Nguyen Duc Hung on 15/08/2024.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    static let identifier = "DetailTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "DetailTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String) {
        lblDetailName.text       = title
    }
    
    @IBOutlet weak var lblDetailName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
