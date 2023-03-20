//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Ya on 11.02.23.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}

struct Root: Decodable {
    let results: [RMLocation]
}
