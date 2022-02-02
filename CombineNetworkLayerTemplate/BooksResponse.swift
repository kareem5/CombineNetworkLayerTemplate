//
//  BooksResponse.swift
//  CombineNetworkLayerTemplate
//
//  Created by Kareem Ahmed on 01/02/2022.
//

import Foundation

// MARK: - BooksResponse
struct BooksResponse: Codable {
    let books: [Book]?
}

// MARK: - Book
struct Book: Codable {
    let id: Int?
    let title, isbn, author: String?
}


