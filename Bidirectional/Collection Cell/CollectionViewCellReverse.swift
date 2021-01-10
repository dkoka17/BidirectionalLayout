//
//  CollectionViewCellReverse.swift
//  Bidirectional
//
//  Created by dato on 1/10/21.
//

import UIKit

class CollectionViewCellReverse: UICollectionViewCell {

    @IBOutlet weak var down: UIView!
    @IBOutlet weak var up: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        up.layer.cornerRadius = 10
        down.layer.cornerRadius = 10
    }

}
