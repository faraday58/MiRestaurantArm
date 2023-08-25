//
//  MyCustomCell.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 24/08/23.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet weak var sucursalLabel: UILabel!
    
    @IBOutlet weak var addressTextView: UITextView!
    
    @IBOutlet weak var distanceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
}
