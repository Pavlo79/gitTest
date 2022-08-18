//
//  CountryTableViewCell.swift
//  Test_Contries_2
//
//  Created by Seven on 26.07.2022.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var flag: UIImageView!
    @IBOutlet weak var nameCountry: UILabel!
    @IBOutlet weak var capital: UILabel!
    @IBOutlet weak var smallDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func  setupCell(country:Country) {
        self.flag.image = country.image
        self.nameCountry.text = country.nameCountry
        self.capital.text = country.capital
        self.smallDescription.text = country.smallDescription
    }
   
}
