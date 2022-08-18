//
//  API.swift
//  Test_Countries
//
//  Created by Seven on 24.07.2022.
//

import Foundation
import UIKit

let session = URLSession(configuration: .default)

func handleResponse(data: Data?, response: URLResponse?, error: Error?) {
    guard let data = data else { return }
    guard let image = UIImage(data: data) else { return }
    DispatchQueue.main.async {
        let view = UIImageView(image: image)
    }
}

struct Country: Codable {
    let name: String
    let continent: String
    let capital: String
    let population: Int
    let description_small: String
    let description: String
    let image: String
    struct country_info: Codable {
        let images: [String]
        let flag: String
    }
    
}

struct Page: Codable {
    let next: String
    let countries: [Country]
}

func DownloadInformationAboutCountries(complition: @escaping ([Page]) -> ())  {
    let url = URL(string: "https://rawgit.com/NikitaAsabin/799e4502c9fc3e0ea7af439b2dfd88fa/raw/7f5c6c66358501f72fada21e04d75f64474a7888/page1.json")!
    
    let task = URLSession.shared.dataTask(with: url) { data, _, _ in
        guard let data = data else { return }
        guard String(data: data, encoding: .utf8) != nil else { return }
        
        do{
            let page = try JSONDecoder().decode(Page.self, from: data)
            print("Count of drinks: \(page.next)")
            print("Catecory: \(page.countries[0].name)")
            let imageUrl = URL(string: "https://cdn.pixabay.com/photo/2015/10/24/21/30/abkhazia-1005013_960_720.png")!
            let taskImage = session.dataTask(with: imageUrl, completionHandler: handleResponse(data:response:error:))
            taskImage.resume()
            
        } catch {
            print (error.localizedDescription)
        }
    }
    task.resume()
}
//DownloadInformationAboutCountries()
