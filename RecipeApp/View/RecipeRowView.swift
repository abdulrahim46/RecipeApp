//
//  RecipeRowView.swift
//  RecipeApp
//
//  Created by Abdul Choudhary on 10/6/24.
//

import SwiftUI

// MARK: - RecipeRowView
struct RecipeRowView: View {
    let recipe: Recipe
    
    var body: some View {
        HStack {
            // Use AsyncImage for loading images asynchronously.
            AsyncImage(url: URL(string: recipe.photoUrlSmall)) { phase in
                switch phase {
                case .empty:
                    ProgressView() // Show a loading indicator while the image is loading.
                        .frame(width: 80, height: 80)
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                case .failure:
                    Image(systemName: "photo") // Show a placeholder if the image fails to load.
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .foregroundColor(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                @unknown default:
                    EmptyView()
                }
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(recipe.name)
                    .font(.headline)
                Text(recipe.cuisine)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding(.vertical, 8)
    }
}
