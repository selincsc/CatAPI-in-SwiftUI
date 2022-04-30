//
//  APIMockService.swift
//  CatAPI in SwiftUI
//
//  Created by Selin Çağlar on 29.04.2022.
//

import Foundation

struct APIMockService: APIServiceProtocol{
    var result: Result<[Breed], APIError>
    
    func fetchBreeds(url: URL?, completion: @escaping (Result<[Breed], APIError>) -> Void) {
        completion(result)
    }
    
    
    
}
