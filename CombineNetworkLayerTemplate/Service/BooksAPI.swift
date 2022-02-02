//
//  BooksAPI.swift
//  CombineNetworkLayerTemplate
//
//  Created by Kareem Ahmed on 01/02/2022.
//

import Combine

protocol BooksAPI: APIClient {
    func fetchBooks() -> AnyPublisher<BooksResponse?, Error>
}
