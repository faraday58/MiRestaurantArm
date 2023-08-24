//
//  User.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 24/08/23.
//

import Foundation

struct User{
    let name: String
    let password: String
    let email: String
    
    init(name: String, password: String, email: String) {
        self.name = name
        self.password = password
        self.email = email
    }
    
    
}
