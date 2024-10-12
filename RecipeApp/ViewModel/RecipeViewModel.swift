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
    
    private let repository: RecipeRepositoryProtocol
    
    init(repository: RecipeRepositoryProtocol) {
        self.repository = repository
    }
    
    func loadRecipes() async {
        isLoading = true
        errorMessage = nil
        
        do {
            let fetchedRecipes = try await repository.getRecipes()
            
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
