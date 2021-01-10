//
//  RedCell.swift
//  Bidirectional
//
//  Created by dato on 1/10/21.
//

import UIKit

class RedCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        view.layer.cornerRadius = 10
    }
    
}
