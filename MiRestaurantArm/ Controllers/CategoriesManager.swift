//
//  CategoriesManager.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 25/08/23.
//

import UIKit

struct CategoriesManager {
    func fetchCategories(completion : @escaping(CategoriesModel) -> Void ){
        
        guard let url = URL(string: "http://localhost:8080/categories") else {return}
        
        let dataTask  = URLSession.shared.dataTask(with: url){
            (data, _, error ) in
            if let error = error {
                print("Error fetching categories: \(error.localizedDescription)")
            }
            
            guard let jsonData = data else {return }
            
            let decoder = JSONDecoder()
            
            do{
                let decodeData = try decoder.decode(CategoriesModel.self, from: jsonData)
                completion(decodeData)
            }catch{
                print("Error decoding data")
            }
        }
        dataTask.resume()
        
    }
    
}
