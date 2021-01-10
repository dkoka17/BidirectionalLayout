//
//  BlueCell.swift
//  Bidirectional
//
//  Created by dato on 1/10/21.
//

import UIKit

class BlueCell: UITableViewCell {

    @IBOutlet weak var right: UIView!
    @IBOutlet weak var left: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        left.layer.cornerRadius = 10
        right.layer.cornerRadius = 10
    }
    
}
