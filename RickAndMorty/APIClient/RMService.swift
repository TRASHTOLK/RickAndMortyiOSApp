//
//  RMService.swift
//  RickAndMorty
//
//  Created by Ya on 11.02.23.
//

import Foundation

/// Primaty API service object to get Rick&Morty data
final class RMService {
    /// Shared singleton instatnce
    static let shared = RMService()
    
    /// Privatize constructor
    private init() {}
    
    
    /// Send Rick&Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object then we expect  
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(_ request: RMRequest,
                                    expecting type: T.Type,
                                    completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
