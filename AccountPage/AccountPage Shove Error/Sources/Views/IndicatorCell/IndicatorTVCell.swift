//
//  IndicatorTVCell.swift
//  AccountPage Shove Error
//
//  Created by Nguyen Duc Hung on 16/08/2024.
//

import UIKit

class IndicatorTVCell: UITableViewCell {
    
    static let identifier = "IndicatorTVCell"
    static func nib() -> UINib {
        return UINib(nibName: "IndicatorTVCell", bundle: nil)
    }
    
    public func configure(with title: String, leftSubTitle: String?, rightSubTitle: String?, imageName: String) {
        indicatorImage.image        = UIImage(systemName: imageName)
        indicatorTitle.text         = title
        indicatorLeftSub.text       = leftSubTitle
        indicatorRightSub.text      = rightSubTitle
    }
    
    @IBOutlet var indicatorView: UIView!
    @IBOutlet var indicatorImage: UIImageView!
    @IBOutlet var indicatorTitle: UILabel!
    @IBOutlet var indicatorLeftSub: UILabel!
    @IBOutlet var indicatorRightSub: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        indicatorView.layer.cornerRadius    = 10
        indicatorImage.contentMode          = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
