//
//  CustomViewCell.swift
//  Flower Power
//
//  Created by Beuca Alexandru on 11.07.2021.
//

import UIKit

class CustomViewCell: UITableViewCell {
    
    @IBOutlet weak var ordersLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    static let cellIdentifier = "CustomViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomViewCell", bundle: nil)
    }
    
    
}
