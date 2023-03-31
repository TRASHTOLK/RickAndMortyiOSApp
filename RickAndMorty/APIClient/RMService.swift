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
        
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }

            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                
                completion(.success(result))
            }
            catch {
                print("Error in URLSessionDataTask: " + String(describing: error))
            }
        }
        task.resume()
    }
    
    
    //MARK: - Private
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }
        
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
}
