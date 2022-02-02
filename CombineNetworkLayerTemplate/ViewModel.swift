//
//  ViewModel.swift
//  CombineNetworkLayerTemplate
//
//  Created by Kareem Ahmed on 01/02/2022.
//

import Foundation
import Combine

class ViewModel {
    private let booksAPIService: BooksAPI
    private var subscriptions = Set<AnyCancellable>()

    init(booksAPIService: BooksAPI = BooksAPIService()) {
        self.booksAPIService = booksAPIService
    }
    
    func loadBooks() {
        booksAPIService.fetchBooks()
            .receive(on: RunLoop.main)
            .sink { completion in
                switch completion {
                case let .failure(error):
                    print("Couldn't get books: \(error)")
                case .finished: break
                }
            } receiveValue: { booksResult in
                print("received books: \(booksResult?.books ?? [])")
            }
            .store(in: &subscriptions)
    }
}
