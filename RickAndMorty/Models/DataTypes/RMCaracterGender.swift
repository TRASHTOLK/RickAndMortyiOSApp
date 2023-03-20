//
//  RMCaracterGender.swift
//  RickAndMorty
//
//  Created by Ya on 11.02.23.
//

import Foundation

/// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
enum RMCaracterGender: String, Codable {
    case female     = "Female"
    case male       = "Male"
    case genderless = "Genderless"
    case `unknown`  = "unknown"
}
