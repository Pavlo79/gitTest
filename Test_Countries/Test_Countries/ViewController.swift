//
//  ViewController.swift
//  Test_Countries
//
//  Created by Seven on 21.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var flag: UIImageView!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var capital: UILabel!
    @IBOutlet weak var smallDescription: UILabel!
    
    

    
    @IBOutlet weak var CollectionView: UICollectionView!

    var itemMenuArray: [Menu] = {
        var blankMenu = Menu()
        blankMenu.name = "dog"
        
        var blankMenu2 = Menu()
        blankMenu2.name = "dog"
        return [blankMenu, blankMenu2]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource = self
        CollectionView.delegate = self
    }
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemMenuArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? MenuCollectionViewCell {
            itemCell.menu = itemMenuArray[indexPath.row]
            return itemCell
        }
        return UICollectionViewCell()
    }
}

    




