//
//  RecipeViewModel.swift
//  RecipeApp
//
//  Created by Abdul Choudhary on 10/6/24.
//

import Foundation

// MARK: - RecipeViewModel
@MainActor
class RecipeViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    
    func loadRecipes() async {
        isLoading = true
        errorMessage = nil
        let recipeURL = "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json"
        
        do {
            let fetchedRecipes = try await NetworkService.shared.fetchRecipes(from: recipeURL)
            
            if fetchedRecipes.isEmpty {
                errorMessage = "No recipes available."
            } else {
                recipes = fetchedRecipes
            }
        } catch {
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
}
