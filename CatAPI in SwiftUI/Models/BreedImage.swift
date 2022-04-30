//
//  BreedImage.swift
//  CatAPI in SwiftUI
//
//  Created by Selin Çağlar on 29.04.2022.
//

import Foundation

/*
 "image": {
   "height": 1445,
   "id": "0XYvRd7oD",
   "url": "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg",
   "width": 1204
 },
 */

struct BreedImage: Codable {
    let height: Int?
    let id: String?
    let url: String?
    let width: Int?
    
}
