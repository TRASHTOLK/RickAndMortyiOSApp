//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Ya on 10.02.23.
//

import UIKit

/// Controller to show and search for Characters
class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let result = RMRequest.init(endpoint: .character,
                                    queryParameters: [URLQueryItem(name: "name", value: "rick")
                                                     ,URLQueryItem(name: "status", value: "")])
        

        
    }
}
