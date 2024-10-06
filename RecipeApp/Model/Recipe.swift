//
//  Recipe.swift
//  RecipeApp
//
//  Created by Abdul Choudhary on 10/6/24.
//

import Foundation

// MARK: - Recipe Model
struct Recipe: Identifiable, Decodable {
    let id: UUID = UUID()
    let name: String
    let imageUrl: String
    let cuisineType: String
    
    enum CodingKeys: String, CodingKey {
        case name, imageUrl, cuisineType
    }
}
