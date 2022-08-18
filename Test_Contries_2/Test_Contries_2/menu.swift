//
//  menu.swift
//  Test_Contries_2
//
//  Created by Seven on 25.07.2022.
//

import Foundation
import UIKit

struct Country {
    var nameCountry: String
    var capital: String
    var smallDescription: String
    var image: UIImage
}

class Menu {
    
    var countries = [Country]()
 
    init() {
        setup()
    }
    
    func setup() {
        let c1 = Country(nameCountry: "Pol", capital: "Varshava", smallDescription: "description", image: UIImage(named: "c1")!)
        let c2 = Country(nameCountry: "Pol", capital: "Varshava", smallDescription: "description", image: UIImage(named: "c2")!)
        let c3 = Country(nameCountry: "Pol", capital: "Varshava", smallDescription: "description", image: UIImage(named: "c1")!)
        let c4 = Country(nameCountry: "Pol", capital: "Varshava", smallDescription: "description", image: UIImage(named: "c2")!)
        let c5 = Country(nameCountry: "Pol", capital: "Varshava", smallDescription: "description", image: UIImage(named: "c1")!)
        let c6 = Country(nameCountry: "Pol", capital: "Varshava", smallDescription: "description", image: UIImage(named: "c2")!)
        let c7 = Country(nameCountry: "Pol", capital: "Varshava", smallDescription: "description", image: UIImage(named: "c1")!)
        let c8 = Country(nameCountry: "Pol", capital: "Varshava", smallDescription: "description", image: UIImage(named: "c2")!)
        self.countries = [c1,c2,c3,c4,c5,c6,c7,c8]
    }
}
