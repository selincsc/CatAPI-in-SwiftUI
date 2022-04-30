//
//  APIServiceProtocol.swift
//  CatAPI in SwiftUI
//
//  Created by Selin Çağlar on 29.04.2022.
//

import Foundation

protocol APIServiceProtocol{
    
    func fetchBreeds(url: URL?, completion: @escaping(Result<[Breed], APIError>) -> Void)

}
