//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Ya on 11.02.23.
//

import Foundation

/// Object that represent single API call
final class RMRequest {
    private let baseURL = "https://rickandmortyapi.com/api/"
    
    private let endpoint: RMEnpoint
    private let pathComponents: Set<String>
    private let queryParameters: [URLQueryItem]
    
    public let httpMethod = "GET"
    
    private var urlString: String {
        var url = baseURL + endpoint.rawValue
        print(url)
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                url += "/\($0)"
            }
        }
        
        if !queryParameters.isEmpty {
            print("test \(queryParameters)")
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            url += "?\(argumentString)"
        }
        
        return url
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Collection of query parametrs
    init(endpoint: RMEnpoint,
         pathComponents: Set<String> = [],
         queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
