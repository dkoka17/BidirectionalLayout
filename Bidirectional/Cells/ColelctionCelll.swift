//
//  ColelctionCelll.swift
//  Bidirectional
//
//  Created by dato on 1/10/21.
//

import UIKit

class ColelctionCelll: UITableViewCell {
    

    @IBOutlet var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(
            UINib(nibName: "CollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: "CollectionViewCell"
        )
        collectionView.register(
            UINib(nibName: "CollectionViewCellReverse", bundle: nil),
            forCellWithReuseIdentifier: "CollectionViewCellReverse"
        )
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}

extension ColelctionCelll: UICollectionViewDelegate {
    
}

extension ColelctionCelll: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row%2 == 0 {
            return collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        } else {
            return collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellReverse", for: indexPath)
        
        }
        
    }
    
    
}
