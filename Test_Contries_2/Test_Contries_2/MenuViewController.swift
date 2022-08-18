//
//  MenuViewController.swift
//  Test_Contries_2
//
//  Created by Seven on 25.07.2022.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var ColectionView: UICollectionView!
    var menu: Menu = Menu()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ColectionView.register(UINib(nibName: "CountryCell", bundle: nil), forCellWithReuseIdentifier: "CountryCell")
        self.ColectionView.dataSource = self
        self.ColectionView.delegate = self

    }
    
}
extension MenuViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menu.countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryCell", for: indexPath) as! CountryCell
        let country = menu.countries[indexPath.item]
        cell.setupCell(countries: country)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)//, height: UIScreen.main.bounds.width)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
