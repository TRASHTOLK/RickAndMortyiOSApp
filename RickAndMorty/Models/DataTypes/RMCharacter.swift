//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Ya on 11.02.23.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCaracterGender
    let origin: RMCharacterOrigin
    let location: RMCaracterLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
