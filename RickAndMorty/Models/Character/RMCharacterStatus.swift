//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Ya on 11.02.23.
//

import Foundation

/// The status of the character ('Alive', 'Dead' or 'unknown').
enum RMCharacterStatus: String, Codable {
    case alive     = "Alive"
    case dead      = "Dead"
    case `unknown` = "unknown"
}
