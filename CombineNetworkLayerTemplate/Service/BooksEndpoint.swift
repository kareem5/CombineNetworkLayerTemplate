//
//  BooksEndpoint.swift
//  CombineNetworkLayerTemplate
//
//  Created by Kareem Ahmed on 01/02/2022.
//

import Foundation

enum BooksEndpoint {
    case fetchBooks
    
    struct Constants {
        static let baseUrl = "https://run.mocky.io/v3"
        static let booksAPI = "/e58de315-8add-4605-b275-af978143e62c"
    }
}

extension BooksEndpoint: Endpoint {
    var baseURL: URL {
        guard let url = URL(string: Constants.baseUrl) else { fatalError("baseURL could not be configured.")}
        return url
    }
    
    var path: String {
        switch self {
        case .fetchBooks:
            return Constants.booksAPI
        }
    }
    
    var method: HTTPRequestMethod {
        switch self {
        case .fetchBooks:
            return .get
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .fetchBooks:
            return nil
        }
    }
}
