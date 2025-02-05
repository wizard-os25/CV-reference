//
//  IndicatorTableViewCell.swift
//  Standard Form TableView
//
//  Created by Nguyen Duc Hung on 15/08/2024.
//

import UIKit

class IndicatorTableViewCell: UITableViewCell {
    
    static let identifier = "IndicatorTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "IndicatorTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        indicatorImageView.image            = UIImage(systemName: imageName)
        lblIndicatorName.text               = title
    }
    
    @IBOutlet var containerIndicatorImage: UIView!
    @IBOutlet var indicatorImageView: UIImageView!
    @IBOutlet var lblIndicatorName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        containerIndicatorImage.layer.cornerRadius = 10
        indicatorImageView.contentMode = .scaleAspectFit
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
