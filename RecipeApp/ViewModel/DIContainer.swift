//
//  DIContainer.swift
//  RecipeApp
//
//  Created by Abdul Choudhary on 10/6/24.
//

import Foundation

// MARK: - Dependency Injection Container
class DIContainer {
    static let shared = DIContainer()
    
    private init() {}
    
    @MainActor func getRecipeViewModel() -> RecipeViewModel {
        let networkService: NetworkServiceProtocol = NetworkService()
        let repository: RecipeRepositoryProtocol = RecipeRepository(networkService: networkService)
        return RecipeViewModel(repository: repository)
    }
}
