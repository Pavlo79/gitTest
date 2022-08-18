//
//  MenuCollectionViewCell.swift
//  Test_Countries
//
//  Created by Seven on 24.07.2022.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    var menu: Menu? {
        didSet {
            nameLabel.text = menu?.name
        }
    }
}
