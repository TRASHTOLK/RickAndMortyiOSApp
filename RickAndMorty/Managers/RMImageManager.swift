//
//  RMImageManager.swift
//  RickAndMorty
//
//  Created by Ya on 20.03.23.
//

import Foundation

final class RMImageLoader {
    static let shared = RMImageLoader()
    
    private var imageDataCahe = NSCache<NSString, NSData>()
    
    private init() {}
    
    public func downloadImage(_ url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        let request = URLRequest(url: url)
        let key = url.absoluteString as NSString
        if let data = imageDataCahe.object(forKey: key) {
            completion(.success(data as Data))
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            let value = data as NSData
            self?.imageDataCahe.setObject(value, forKey: key)
            completion(.success(data))
        }
        task.resume()
    }
}
