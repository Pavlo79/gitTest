//
//  CountryCell.swift
//  Test_Contries_2
//
//  Created by Seven on 25.07.2022.
//

import UIKit

class CountryCell: UICollectionViewCell {

    @IBOutlet weak var tableView: UITableView!
  
    var countries = [Country]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib(nibName: "CountryTableViewCell", bundle: nil), forCellReuseIdentifier: "CountryTableViewCell")
    }
    func setupCell(countries:[Country]) {
        self.countries = countries
        self.tableView.reloadData()
    }
    /*
    func  setupCell(country:Country) {
        self.flag.image = country.image
        self.nameCountry.text = country.nameCountry
        self.capital.text = country.capital
        self.smallDescription.text = country.smallDescription
    }
 */
}
extension CountryCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryTableViewCell") as! CountryTableViewCell
        cell.setupCell(country: self.countries[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
