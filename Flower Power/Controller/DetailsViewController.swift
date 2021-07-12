//
//  DetailsViewController.swift
//  Flower Power
//
//  Created by Beuca Alexandru on 11.07.2021.
//

import UIKit
import Kingfisher
class DetailsViewController: UIViewController {
    
    var details: Flower?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = details?.deliver_to.name {
            nameLabel.text = name
        }
        if let address = details?.deliver_to.address {
            addressLabel.text = address
            
        }
        if let status = details?.status {
            statusLabel.text = status
        }
        
        imageLabel.kf.indicatorType = .activity
        imageLabel.kf.setImage(with: URL(string: details!.image_url), options: [.transition(.fade(0.5)), .cacheOriginalImage])
        
    }
}





