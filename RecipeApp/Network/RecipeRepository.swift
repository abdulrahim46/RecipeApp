//
//  RecipeRepository.swift
//  RecipeApp
//
//  Created by Abdul Choudhary on 10/6/24.
//

import Foundation

// MARK: - RecipeRepository
final class RecipeRepository: RecipeRepositoryProtocol {
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    func getRecipes() async throws -> [Recipe] {
        return try await networkService.fetchData(from: ServiceURLs.recipesURL, responseType: [Recipe].self)
    }
}
