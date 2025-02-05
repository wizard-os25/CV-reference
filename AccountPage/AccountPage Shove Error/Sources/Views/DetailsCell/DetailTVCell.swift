//
//  DetailTVCell.swift
//  AccountPage Shove Error
//
//  Created by Nguyen Duc Hung on 16/08/2024.
//

import UIKit

class DetailTVCell: UITableViewCell {
    
    static let identifier = "DetailTVCell"
    static func nib() -> UINib {
        return UINib(nibName: "DetailTVCell", bundle: nil)
    }
    
    public func configure(with title: String) {
        detailTitle.text = title
    }
    @IBOutlet var detailTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
