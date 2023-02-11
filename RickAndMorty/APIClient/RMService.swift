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
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
