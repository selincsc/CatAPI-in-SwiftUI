//
//  ErrorView.swift
//  CatAPI in SwiftUI
//
//  Created by Selin Çağlar on 29.04.2022.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var breedFetcher = BreedFetcher()
    
    var body: some View {
        VStack{
            Text("🙈")
                .font(.system(size: 80))
            Text(breedFetcher.errorMessage ?? "")
            
            Button{
                breedFetcher.fetchAllBreeds()
            }label: {
                Text("Try again")
            }
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(breedFetcher: BreedFetcher())
    }
}
