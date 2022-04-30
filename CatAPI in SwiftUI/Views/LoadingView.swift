//
//  LoadingView.swift
//  CatAPI in SwiftUI
//
//  Created by Selin Çağlar on 29.04.2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack{
            Text("🐱").font(.system(size: 40))
            ProgressView()
                .padding(40)
            Text("getting the cats..")
                .foregroundColor(.gray)
           
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
