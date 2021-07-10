//
//  ParseData.swift
//  Flower Power
//
//  Created by Beuca Alexandru on 10.07.2021.
//
import Foundation


 class ParseData {
    var flower = [Flower]()
    let urlString = "https://demo4543095.mockable.io"
    
    func downloadJSON (completed: @escaping ([Flower]) -> ()) {
        let url = URL (string: urlString)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    let result = try JSONDecoder().decode([Flower].self, from: data!)
                    DispatchQueue.main.async {
                        completed(result)
                    }
                }catch {
                    print (error)
                }
            }
        }.resume()
        
    }
}
