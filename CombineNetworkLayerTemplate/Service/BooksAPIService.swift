//
//  BooksAPIService.swift
//  CombineNetworkLayerTemplate
//
//  Created by Kareem Ahmed on 01/02/2022.
//

import Combine

struct BooksAPIService: BooksAPI {
    func fetchBooks() -> AnyPublisher<BooksResponse?, Error> {
        return fetch(endpoint: BooksEndpoint.fetchBooks, type: BooksResponse?.self)
    }
}
