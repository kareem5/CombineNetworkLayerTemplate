//
//  Endpoint.swift
//  CombineNetworkLayerTemplate
//
//  Created by Kareem Ahmed on 01/02/2022.
//

import Foundation

protocol Endpoint {
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPRequestMethod { get }
    var headers: [String: String]? { get }
}
