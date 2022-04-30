//
//  BreedListView.swift
//  CatAPI in SwiftUI
//
//  Created by Selin Çağlar on 29.04.2022.
//

import SwiftUI

struct BreedListView: View {
    let breeds: [Breed]
    var filteredBreeds: [Breed]{
        if searchText.count == 0 {
            return breeds
        }else {
            return breeds.filter{ $0.name.contains(searchText)}
        }
    }
    @State private var searchText: String = ""
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(filteredBreeds){ breed in
                    NavigationLink{
                        BreedDetailView(breed: breed)
                    }label: {
                        BreedRow(breed: breed)
                    }
                    
                }
                
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Find your Perfect Cat")
            .searchable(text: $searchText)
        }
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: BreedFetcher.successState().breeds)
    }
}
