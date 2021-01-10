//
//  CollectionViewCell.swift
//  Bidirectional
//
//  Created by dato on 1/10/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var up: UIView!
    @IBOutlet weak var down: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        up.layer.cornerRadius = 10
        down.layer.cornerRadius = 10
    }

}
